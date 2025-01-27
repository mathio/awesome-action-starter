function run(): void {
  try {
    console.log("Hello from TypeScript Action!");
    process.exit(0);
  } catch (error) {
    if (error instanceof Error) {
      console.error(error.message);
    }
    process.exit(1);
  }
}

run();
