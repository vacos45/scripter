# Roblox Script Vault

A web application for storing and retrieving Roblox scripts using unique keys. The system allows users to submit their Roblox scripts along with a unique identifier (key) and later retrieve those scripts by providing the same key.

## Features

- **User-friendly Interface**: Clean and responsive UI for submitting and retrieving scripts
- **Key-Based Storage**: Store scripts with unique keys for easy retrieval
- **Serverless Architecture**: Uses Vercel's serverless functions and temporary filesystem
- **Input Validation**: Ensures keys and scripts meet specific criteria
- **Error Handling**: Provides clear feedback for common errors
- **Copy to Clipboard**: Easily copy retrieved scripts with a single click

## Technical Implementation

- **Frontend**: Next.js with React and TypeScript
- **UI Components**: ShadCN UI library for modern design
- **Form Handling**: React Hook Form with Zod validation
- **API Routes**: Next.js API routes for serverless functions
- **Storage**: File-based storage in Vercel's ephemeral filesystem
- **Deployment**: Configured for Vercel deployment

## Project Structure

```
/
├── src/
│   ├── app/
│   │   ├── api/
│   │   │   └── scripts/
│   │   │       ├── save/
│   │   │       │   └── route.ts    # API endpoint for saving scripts
│   │   │       └── get/
│   │   │           └── route.ts    # API endpoint for retrieving scripts
│   │   ├── submit/
│   │   │   └── page.tsx            # Script submission page
│   │   ├── lookup/
│   │   │   └── page.tsx            # Script retrieval page
│   │   ├── success/
│   │   │   └── page.tsx            # Success confirmation page
│   │   ├── layout.tsx              # Root layout
│   │   └── page.tsx                # Home page
│   ├── components/
│   │   └── ui/                     # UI components
│   ├── types/
│   │   └── script.ts               # TypeScript interfaces
│   └── lib/
│       └── utils.ts                # Utility functions
├── vercel.json                     # Vercel configuration
├── netlify.toml                    # Netlify configuration
└── package.json                    # Project dependencies
```

## Limitations

- **Ephemeral Storage**: Data is stored in Vercel's temporary filesystem, which means:
  - Data may not persist between deployments
  - Data may be lost during scale-out events
  - Not suitable for permanent storage of important scripts
- **Concurrency**: Simple file-based approach may have issues under high load
- **No Authentication**: Anyone with the key can retrieve the script

## Usage

1. **Submit a Script**:
   - Navigate to the submission page
   - Enter a unique key (letters, numbers, hyphens, underscores)
   - Paste your Roblox script
   - Submit the form

2. **Retrieve a Script**:
   - Navigate to the lookup page
   - Enter the key associated with your script
   - View and copy your script

## Development

```bash
# Install dependencies
bun install

# Start development server
bun run dev

# Build for production
bun run build

# Start production server
bun run start
```

## License

MIT
