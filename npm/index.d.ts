declare module '@apiverve/acrostic' {
  export interface acrosticOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface acrosticResponse {
    status: string;
    error: string | null;
    data: AcrosticPuzzleGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface AcrosticPuzzleGeneratorData {
      keyword:   null | string;
      theme:     null | string;
      lines:     Line[];
      lineCount: number | null;
      html:      null | string;
      image:     Image;
  }
  
  interface Image {
      imageName:   null | string;
      format:      null | string;
      downloadURL: null | string;
      expires:     number | null;
  }
  
  interface Line {
      position:    number | null;
      letter:      null | string;
      answer:      null | string;
      letterCount: number | null;
      clue:        null | string;
  }

  export default class acrosticWrapper {
    constructor(options: acrosticOptions);

    execute(callback: (error: any, data: acrosticResponse | null) => void): Promise<acrosticResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: acrosticResponse | null) => void): Promise<acrosticResponse>;
    execute(query?: Record<string, any>): Promise<acrosticResponse>;
  }
}
