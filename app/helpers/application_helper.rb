module ApplicationHelper
  def time_diff(from_time, to_time)
    from_time = from_time.to_time if from_time.respond_to?(:to_time)
    to_time = to_time.to_time if to_time.respond_to?(:to_time)
    distance_in_seconds = (to_time - from_time).abs.round
    components = []

    %w[year month week day].each do |interval|
      # For each interval type, if the amount of time remaining is greater than
      # one unit, calculate how many units fit into the remaining time.
      next unless distance_in_seconds >= 1.send(interval)
      delta = (distance_in_seconds / 1.send(interval)).floor
      distance_in_seconds -= delta.send(interval)
      components << pluralize(delta, interval)
    end

    components.join(', ')
  end
end
