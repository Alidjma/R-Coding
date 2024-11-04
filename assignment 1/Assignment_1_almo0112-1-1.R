# Loading necessary libraries and data
library(datasets)
library(billboard)

# Loading the mtcars dataset
mtcars <- get(data("mtcars"))

# Defining the car countries vector
car_countries <- c("Japan", "Japan", "Japan", "USA", "USA",
                   "USA", "USA", "Germany", "Germany", "Germany", "Germany",
                   "Germany", "Germany", "Germany", "USA",
                   "USA", "USA", "Italy", "Japan",
                   "Japan", "Japan", "USA", "USA",
                   "USA", "USA", "Italy", "Germany", "UK",
                   "USA", "Italy", "Italy", "Sweden")

# Adding the car_countries column to mtcars dataset
mtcars$car_countries <- car_countries

# Calculating the average mpg
average_mpg <- mean(mtcars$mpg)

# Cars with mpg below average
below_average <- rownames(mtcars[mtcars$mpg < average_mpg, ])

# Cars with mpg above average
above_average <- rownames(mtcars[mtcars$mpg >= average_mpg, ])

print(below_average)
print(above_average)

# Filtering the cars based on country
USA_cars <- mtcars[mtcars$car_countries == "USA", ]
Japan_cars <- mtcars[mtcars$car_countries == "Japan", ]

print(USA_cars)
print(Japan_cars)

# Calculating mpg per cylinder for USA and Japan cars
mpg_per_cyl_USA <- mean(USA_cars$mpg / USA_cars$cyl)
mpg_per_cyl_Japan <- mean(Japan_cars$mpg / Japan_cars$cyl)

print(mpg_per_cyl_USA)
print(mpg_per_cyl_Japan)

# Loading necessary libraries and data
library(billboard)
spotify_track_data <- get(data("spotify_track_data"))

# Creating the my_playlist dataset
my_playlist <- spotify_track_data[spotify_track_data$artist_name %in% c("Rihanna", "Michael Jackson", "Elvis Presley", "Eminem"), ]
print(paste("Rows in my_playlist:", nrow(my_playlist)))
print("Head of my_playlist:")
print(head(my_playlist))

# Creating the dance_tracks dataset with danceability > median value
median_danceability <- median(my_playlist$danceability)
dance_tracks <- my_playlist[my_playlist$danceability > median_danceability, ]
print(paste("Rows in dance_tracks:", nrow(dance_tracks)))
print("Head of dance_tracks:")
print(head(dance_tracks))

# Filtering dance_tracks to include only Rihanna's tracks
rihanna_dance_tracks <- dance_tracks[dance_tracks$artist_name == "Rihanna", ]
print("Rihanna's dance tracks in dance_tracks:")
print(rihanna_dance_tracks)

# Calculating the number of Rihanna's tracks in dance_tracks
rihanna_dance_tracks_count <- nrow(rihanna_dance_tracks)
print(paste("Number of Rihanna's dance tracks:", rihanna_dance_tracks_count))

# Calculating the total number of tracks in my_playlist
total_tracks_in_my_playlist <- nrow(my_playlist)
print(paste("Total number of tracks in my_playlist:", total_tracks_in_my_playlist))

# Calculating the proportion of Rihanna's dance tracks in my_playlist
Rihanna_dance_tracks <- rihanna_dance_tracks_count / total_tracks_in_my_playlist
print(paste("Proportion of Rihanna's dance tracks in my_playlist:", Rihanna_dance_tracks))

# Correcting the danceability for Michael Jackson tracks
corrected_playlist <- spotify_track_data
michael_jackson_index <- corrected_playlist$artist_name == "Michael Jackson"
corrected_playlist[michael_jackson_index, "danceability"] <- corrected_playlist[michael_jackson_index, "danceability"] - 0.05

# Calculating the sum of danceability for Michael Jackson tracks after correction
michael_jackson_tracks <- corrected_playlist[corrected_playlist$artist_name == "Michael Jackson", ]
michael_jackson_danceability_sum <- sum(michael_jackson_tracks$danceability)

# Verifying the sum of Michael Jackson tracks' danceability
print(paste("Sum of Michael Jackson's danceability:", michael_jackson_danceability_sum))

# Calculating the total danceability of the corrected playlist
corrected_playlist_danceability_sum <- sum(corrected_playlist$danceability)

# Expected total danceability considering the correction
expected_danceability_sum <- corrected_playlist_danceability_sum + 1.3
print(paste("Expected total danceability:", expected_danceability_sum))
