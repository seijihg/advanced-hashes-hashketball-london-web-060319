require "pry"

def game_hash
  nba_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1,

        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7,

        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15,

        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5,

        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1,

        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2,

        },
        "Bismack Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10,

        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5,

        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0,

        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12,

        }
      }
    }
  }
end

def num_points_scored(name)
    empty_hash = {}

    game_hash.each do |key, value|
      value.each do |key1, value2|
        if value2.is_a?(Hash)
            value2.each do |key2, value2|
                if key2 == name
                    value2.each do |key3, value3|
                        empty_hash[key3] = value3
                    end
                end
            end
        end
      end
    end

    empty_hash[:points]
end

def shoe_size(name)
    empty_hash = {}

    game_hash.each do |key, value|
      value.each do |key1, value2|
        if value2.is_a?(Hash)
            value2.each do |key2, value2|
                if key2 == name
                    value2.each do |key3, value3|
                        empty_hash[key3] = value3
                    end
                end
            end
        end
      end
    end

    empty_hash[:shoe]
end

def team_colors(team)
    empty_arr = []
    game_hash.each do |k,v|
        if v.has_value?(team)
            v.each do |k1, v1|
                if k1 == :colors
                    empty_arr.push(v1)
                end
            end
        end
    end
    empty_arr[0]
end

def team_names
    empty_arr = []
    game_hash.each do |k, v|
        v.each do |k1, v1|
            if k1 == :team_name
                empty_arr.push(v1)
            end
        end
    end
    empty_arr
end

def player_numbers(team_name)
    empty_arr = []

    game_hash.each do |k, v|
        if v.has_value?(team_name)
            v.each do |k1, v1|
                if v1.is_a?(Hash)
                    v1.each do |k2, v2|
                        v2.each do |k3, v3|
                            if k3 == :number
                                empty_arr.push(v3)
                            end
                        end
                    end
                end
            end
        end
    end

    empty_arr
end

def player_stats(name)
    empty_hash = {}
    game_hash.each do |k, v|
        v.each do |k1, v1|
            if v1.is_a?(Hash)
                v1.each do |k2, v2|
                    if k2 == name
                        empty_hash[k2] = v2
                    end
                end
            end
        end
    end
    empty_hash[name]
end
