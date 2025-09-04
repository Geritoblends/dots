trimwav() {
    if [ $# -lt 3 ]; then
        echo "Usage: trimwav <input.wav> <start_seconds> <duration_seconds> [output.wav]"
        return 1
    fi

    local infile="$1"
    local start="$2"
    local dur="$3"
    local outfile="${4:-trimmed_${infile}}"

    sox "$infile" "$outfile" trim "$start" "$dur"
    echo "Created: $outfile"
}
