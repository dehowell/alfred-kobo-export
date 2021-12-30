{
	"variables": {
		"highlights_file": $ARGS.positional[0]
	},
	"items": [. | unique_by(.Title)[] | {
		title: .Title,
		subtitle: "\(.Title) by \(.Attribution)",
		arg: .Title
	}]
}