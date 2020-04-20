import sys


def get_notes_duration(bpm):
    duration_per_denominator = {}  # In milliseconds
    for i in range(8):  # 1/1 down to 1/128
        denominator = 2 ** i
        duration = 60000 * 4 / (bpm * denominator)
        duration_per_denominator[denominator] = duration

    return duration_per_denominator


if __name__ == "__main__":
    if len(sys.argv) != 2:
        raise ValueError("Specify BPM as cmdline argument.")

    bpm = float(sys.argv[1])
    durations = get_notes_duration(bpm)
    for denominator, duration in durations.items():
        print(
            "1/{} = {}ms ~= {}ms".format(
                denominator, round(duration, 2), round(duration)
            )
        )
