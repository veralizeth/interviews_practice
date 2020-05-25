# [[0, 1], [3, 8], [9, 12]]

# We treat the meeting with earlier start time as "first," and the other as "second."
# Steps:

# 1. Order the meetings
# 2. Take the first meeting as the start of the day.
# 3. if the end_first is >= start_second, there is an overlap
# 4. merge the meeting and find the greaters between end_first and end_second
# 5. Sent them into the array  with all the merge meetings.

def merge_ranges(hours)
  # Order the meetings
  sorted_meetings = hours.sort
  # Take the first meeting as the start of the day.
  merged_meetings = [sorted_meetings[0]]

  # Iterate over the meeting starting at 1. to compare the current meeting with the last meged
  sorted_meetings[1..-1].each do |current_start, current_end|
    # set the index for the last meeting
    last_merged_meeting_start, last_merged_meeting_end = merged_meetings[-1]


    if current_start <= last_merged_meeting_end
      merged_meetings[-1] = [last_merged_meeting_start, [last_merged_meeting_end, current_end].max]
    else
      merged_meetings << [current_start, current_end]
    end
  end

  return merged_meetings
end

hours = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]
hours = [[1,3], [2, 5], [3, 9]]
hours = [[1, 3], [2, 5], [4, 9]]
p merge_ranges(hours)
