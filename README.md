# Fresh Plugins Registry

The official package registry for [Fresh Editor](https://github.com/fresh-editor/fresh) plugins and themes.

## Files

- `plugins.json` - Plugin registry
- `themes.json` - Theme registry
- `blocklist.json` - Known malicious packages
- `schemas/` - JSON schemas (run `./update-schemas.sh` to sync from fresh repo)

## Adding a Package

1. Fork this repository
2. Add your package to `plugins.json` or `themes.json`
3. Submit a pull request

Every pull request is automatically validated against the JSON schemas in
`schemas/` by the [Validate Registry](.github/workflows/validate-registry.yml)
GitHub Action. Make sure your changes pass before requesting review.

See the [Package Marketplace Design](https://github.com/fresh-editor/fresh/blob/master/docs/internal/PLUGIN_MARKETPLACE_DESIGN.md) for full documentation on registry format, package manifests, and monorepo support.

## License

Registry files are public domain (CC0). Individual packages retain their own licenses.
