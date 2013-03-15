def self.adjust_for_rating(rating, destroyed = false)
  updates = [
      "rating_average=(rating_total/rating_count)",
      "rating_total=rating_total + (%d)" % rating.rating
  ]

  ...

  connection.execute(
    sanitize_sql([
      "INSERT INTO #{table_name}
       (record_type,record_id,rating_type_id,rating_total,rating_count,rating_average)
       VALUES (?, ?, ?, ?, #{counter}, ?)
       ON DUPLICATE KEY UPDATE #{updates.reverse.join(',')}
      ",
      rating.record_type, rating.record_id, rating.rating_type_id, rating.rating, rating.rating
    ])
  )
end
