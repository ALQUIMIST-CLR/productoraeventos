class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy

    enum group_type: ['Men', 'Women', 'Band']

    def total_attendance
        self.concerts.map{|concert| concert.attendance}.sum
    end

    def concertThisMonth
        count = 0;
        self.concerts.map do |concert|
            if concert.date.month == Time.now.month
                count +=1
            end
        end
        count
    end

    def lastConcert
        lastConcert = self.concerts.map {|concert| concert.date}.max   
        lastConcertInWords = lastConcert.strftime("%Y-%B-%A")
        "#{lastConcert}/#{lastConcertInWords}"
    end

    def maxAttendance
        self.concerts.map {|concert| concert.attendance}.max
    end

    def longestConcert
        self.concerts.map {|concert| concert.duration}.max
    end



end
