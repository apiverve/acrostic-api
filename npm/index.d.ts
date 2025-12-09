declare module '@apiverve/acrostic' {
  export interface acrosticOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface acrosticResponse {
    status: string;
    error: string | null;
    data: AcrosticPuzzleGeneratorData;
    code?: number;
  }


  interface AcrosticPuzzleGeneratorData {
      keyword:   string;
      theme:     string;
      lines:     Line[];
      lineCount: number;
      html:      string;
  }
  
  interface Line {
      position:    number;
      letter:      string;
      answer:      string;
      letterCount: number;
      clue:        string;
  }

  export default class acrosticWrapper {
    constructor(options: acrosticOptions);

    execute(callback: (error: any, data: acrosticResponse | null) => void): Promise<acrosticResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: acrosticResponse | null) => void): Promise<acrosticResponse>;
    execute(query?: Record<string, any>): Promise<acrosticResponse>;
  }
}
