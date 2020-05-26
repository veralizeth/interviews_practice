# Given an array of arrays that represents a trip's start time
# & end time, ex)  [[1,2], [3,5], [2,4]]. Output the min.
# number of drivers required. output => 2

trips = [[1, 2], [3, 5], [2, 4],[ 1, 5]] ==> 3
trips = [[1, 2], [2, 4], [3, 5]] ==> 2


def drivers_required(trips)
  sorted_trips = trips.sort
  merged_trips = [sorted_trips[0]]

  drivers_needed = []

  sorted_trips[1..sorted_trips.length].each do |current_start, current_end|
    start_merged, end_merged = merged_trips[-1]

    if end_merged <= current_start
     merged_trips[-1] = [start_merged, [end_merged,current_end].max]
    else
      drivers_needed << [current_start, current_end]
    end
  end

  return (drivers_needed + merged_trips).length

end

p drivers_required(trips)

