# credo:disable-for-this-file
[
  defmodule TransitRealtime.Alert.Cause do
    @moduledoc false
    (
      defstruct []

      (
        @spec default() :: :UNKNOWN_CAUSE
        def default() do
          :UNKNOWN_CAUSE
        end
      )

      @spec encode(atom() | String.t()) :: integer() | atom()
      [
        (
          def encode(:UNKNOWN_CAUSE) do
            1
          end

          def encode("UNKNOWN_CAUSE") do
            1
          end
        ),
        (
          def encode(:OTHER_CAUSE) do
            2
          end

          def encode("OTHER_CAUSE") do
            2
          end
        ),
        (
          def encode(:TECHNICAL_PROBLEM) do
            3
          end

          def encode("TECHNICAL_PROBLEM") do
            3
          end
        ),
        (
          def encode(:STRIKE) do
            4
          end

          def encode("STRIKE") do
            4
          end
        ),
        (
          def encode(:DEMONSTRATION) do
            5
          end

          def encode("DEMONSTRATION") do
            5
          end
        ),
        (
          def encode(:ACCIDENT) do
            6
          end

          def encode("ACCIDENT") do
            6
          end
        ),
        (
          def encode(:HOLIDAY) do
            7
          end

          def encode("HOLIDAY") do
            7
          end
        ),
        (
          def encode(:WEATHER) do
            8
          end

          def encode("WEATHER") do
            8
          end
        ),
        (
          def encode(:MAINTENANCE) do
            9
          end

          def encode("MAINTENANCE") do
            9
          end
        ),
        (
          def encode(:CONSTRUCTION) do
            10
          end

          def encode("CONSTRUCTION") do
            10
          end
        ),
        (
          def encode(:POLICE_ACTIVITY) do
            11
          end

          def encode("POLICE_ACTIVITY") do
            11
          end
        ),
        (
          def encode(:MEDICAL_EMERGENCY) do
            12
          end

          def encode("MEDICAL_EMERGENCY") do
            12
          end
        )
      ]

      def encode(x) do
        x
      end

      @spec decode(integer()) :: atom() | integer()
      [
        def decode(1) do
          :UNKNOWN_CAUSE
        end,
        def decode(2) do
          :OTHER_CAUSE
        end,
        def decode(3) do
          :TECHNICAL_PROBLEM
        end,
        def decode(4) do
          :STRIKE
        end,
        def decode(5) do
          :DEMONSTRATION
        end,
        def decode(6) do
          :ACCIDENT
        end,
        def decode(7) do
          :HOLIDAY
        end,
        def decode(8) do
          :WEATHER
        end,
        def decode(9) do
          :MAINTENANCE
        end,
        def decode(10) do
          :CONSTRUCTION
        end,
        def decode(11) do
          :POLICE_ACTIVITY
        end,
        def decode(12) do
          :MEDICAL_EMERGENCY
        end
      ]

      def decode(x) do
        x
      end

      @spec constants() :: [{integer(), atom()}]
      def constants() do
        [
          {1, :UNKNOWN_CAUSE},
          {2, :OTHER_CAUSE},
          {3, :TECHNICAL_PROBLEM},
          {4, :STRIKE},
          {5, :DEMONSTRATION},
          {6, :ACCIDENT},
          {7, :HOLIDAY},
          {8, :WEATHER},
          {9, :MAINTENANCE},
          {10, :CONSTRUCTION},
          {11, :POLICE_ACTIVITY},
          {12, :MEDICAL_EMERGENCY}
        ]
      end

      @spec has_constant?(any()) :: boolean()
      (
        [
          def has_constant?(:UNKNOWN_CAUSE) do
            true
          end,
          def has_constant?(:OTHER_CAUSE) do
            true
          end,
          def has_constant?(:TECHNICAL_PROBLEM) do
            true
          end,
          def has_constant?(:STRIKE) do
            true
          end,
          def has_constant?(:DEMONSTRATION) do
            true
          end,
          def has_constant?(:ACCIDENT) do
            true
          end,
          def has_constant?(:HOLIDAY) do
            true
          end,
          def has_constant?(:WEATHER) do
            true
          end,
          def has_constant?(:MAINTENANCE) do
            true
          end,
          def has_constant?(:CONSTRUCTION) do
            true
          end,
          def has_constant?(:POLICE_ACTIVITY) do
            true
          end,
          def has_constant?(:MEDICAL_EMERGENCY) do
            true
          end
        ]

        def has_constant?(_) do
          false
        end
      )
    )
  end,
  defmodule TransitRealtime.Alert.Effect do
    @moduledoc false
    (
      defstruct []

      (
        @spec default() :: :NO_SERVICE
        def default() do
          :NO_SERVICE
        end
      )

      @spec encode(atom() | String.t()) :: integer() | atom()
      [
        (
          def encode(:NO_SERVICE) do
            1
          end

          def encode("NO_SERVICE") do
            1
          end
        ),
        (
          def encode(:REDUCED_SERVICE) do
            2
          end

          def encode("REDUCED_SERVICE") do
            2
          end
        ),
        (
          def encode(:SIGNIFICANT_DELAYS) do
            3
          end

          def encode("SIGNIFICANT_DELAYS") do
            3
          end
        ),
        (
          def encode(:DETOUR) do
            4
          end

          def encode("DETOUR") do
            4
          end
        ),
        (
          def encode(:ADDITIONAL_SERVICE) do
            5
          end

          def encode("ADDITIONAL_SERVICE") do
            5
          end
        ),
        (
          def encode(:MODIFIED_SERVICE) do
            6
          end

          def encode("MODIFIED_SERVICE") do
            6
          end
        ),
        (
          def encode(:OTHER_EFFECT) do
            7
          end

          def encode("OTHER_EFFECT") do
            7
          end
        ),
        (
          def encode(:UNKNOWN_EFFECT) do
            8
          end

          def encode("UNKNOWN_EFFECT") do
            8
          end
        ),
        (
          def encode(:STOP_MOVED) do
            9
          end

          def encode("STOP_MOVED") do
            9
          end
        ),
        (
          def encode(:NO_EFFECT) do
            10
          end

          def encode("NO_EFFECT") do
            10
          end
        ),
        (
          def encode(:ACCESSIBILITY_ISSUE) do
            11
          end

          def encode("ACCESSIBILITY_ISSUE") do
            11
          end
        )
      ]

      def encode(x) do
        x
      end

      @spec decode(integer()) :: atom() | integer()
      [
        def decode(1) do
          :NO_SERVICE
        end,
        def decode(2) do
          :REDUCED_SERVICE
        end,
        def decode(3) do
          :SIGNIFICANT_DELAYS
        end,
        def decode(4) do
          :DETOUR
        end,
        def decode(5) do
          :ADDITIONAL_SERVICE
        end,
        def decode(6) do
          :MODIFIED_SERVICE
        end,
        def decode(7) do
          :OTHER_EFFECT
        end,
        def decode(8) do
          :UNKNOWN_EFFECT
        end,
        def decode(9) do
          :STOP_MOVED
        end,
        def decode(10) do
          :NO_EFFECT
        end,
        def decode(11) do
          :ACCESSIBILITY_ISSUE
        end
      ]

      def decode(x) do
        x
      end

      @spec constants() :: [{integer(), atom()}]
      def constants() do
        [
          {1, :NO_SERVICE},
          {2, :REDUCED_SERVICE},
          {3, :SIGNIFICANT_DELAYS},
          {4, :DETOUR},
          {5, :ADDITIONAL_SERVICE},
          {6, :MODIFIED_SERVICE},
          {7, :OTHER_EFFECT},
          {8, :UNKNOWN_EFFECT},
          {9, :STOP_MOVED},
          {10, :NO_EFFECT},
          {11, :ACCESSIBILITY_ISSUE}
        ]
      end

      @spec has_constant?(any()) :: boolean()
      (
        [
          def has_constant?(:NO_SERVICE) do
            true
          end,
          def has_constant?(:REDUCED_SERVICE) do
            true
          end,
          def has_constant?(:SIGNIFICANT_DELAYS) do
            true
          end,
          def has_constant?(:DETOUR) do
            true
          end,
          def has_constant?(:ADDITIONAL_SERVICE) do
            true
          end,
          def has_constant?(:MODIFIED_SERVICE) do
            true
          end,
          def has_constant?(:OTHER_EFFECT) do
            true
          end,
          def has_constant?(:UNKNOWN_EFFECT) do
            true
          end,
          def has_constant?(:STOP_MOVED) do
            true
          end,
          def has_constant?(:NO_EFFECT) do
            true
          end,
          def has_constant?(:ACCESSIBILITY_ISSUE) do
            true
          end
        ]

        def has_constant?(_) do
          false
        end
      )
    )
  end,
  defmodule TransitRealtime.Alert.SeverityLevel do
    @moduledoc false
    (
      defstruct []

      (
        @spec default() :: :UNKNOWN_SEVERITY
        def default() do
          :UNKNOWN_SEVERITY
        end
      )

      @spec encode(atom() | String.t()) :: integer() | atom()
      [
        (
          def encode(:UNKNOWN_SEVERITY) do
            1
          end

          def encode("UNKNOWN_SEVERITY") do
            1
          end
        ),
        (
          def encode(:INFO) do
            2
          end

          def encode("INFO") do
            2
          end
        ),
        (
          def encode(:WARNING) do
            3
          end

          def encode("WARNING") do
            3
          end
        ),
        (
          def encode(:SEVERE) do
            4
          end

          def encode("SEVERE") do
            4
          end
        )
      ]

      def encode(x) do
        x
      end

      @spec decode(integer()) :: atom() | integer()
      [
        def decode(1) do
          :UNKNOWN_SEVERITY
        end,
        def decode(2) do
          :INFO
        end,
        def decode(3) do
          :WARNING
        end,
        def decode(4) do
          :SEVERE
        end
      ]

      def decode(x) do
        x
      end

      @spec constants() :: [{integer(), atom()}]
      def constants() do
        [{1, :UNKNOWN_SEVERITY}, {2, :INFO}, {3, :WARNING}, {4, :SEVERE}]
      end

      @spec has_constant?(any()) :: boolean()
      (
        [
          def has_constant?(:UNKNOWN_SEVERITY) do
            true
          end,
          def has_constant?(:INFO) do
            true
          end,
          def has_constant?(:WARNING) do
            true
          end,
          def has_constant?(:SEVERE) do
            true
          end
        ]

        def has_constant?(_) do
          false
        end
      )
    )
  end,
  defmodule TransitRealtime.FeedHeader.Incrementality do
    @moduledoc false
    (
      defstruct []

      (
        @spec default() :: :FULL_DATASET
        def default() do
          :FULL_DATASET
        end
      )

      @spec encode(atom() | String.t()) :: integer() | atom()
      [
        (
          def encode(:FULL_DATASET) do
            0
          end

          def encode("FULL_DATASET") do
            0
          end
        ),
        (
          def encode(:DIFFERENTIAL) do
            1
          end

          def encode("DIFFERENTIAL") do
            1
          end
        )
      ]

      def encode(x) do
        x
      end

      @spec decode(integer()) :: atom() | integer()
      [
        def decode(0) do
          :FULL_DATASET
        end,
        def decode(1) do
          :DIFFERENTIAL
        end
      ]

      def decode(x) do
        x
      end

      @spec constants() :: [{integer(), atom()}]
      def constants() do
        [{0, :FULL_DATASET}, {1, :DIFFERENTIAL}]
      end

      @spec has_constant?(any()) :: boolean()
      (
        [
          def has_constant?(:FULL_DATASET) do
            true
          end,
          def has_constant?(:DIFFERENTIAL) do
            true
          end
        ]

        def has_constant?(_) do
          false
        end
      )
    )
  end,
  defmodule TransitRealtime.Stop.WheelchairBoarding do
    @moduledoc false
    (
      defstruct []

      (
        @spec default() :: :UNKNOWN
        def default() do
          :UNKNOWN
        end
      )

      @spec encode(atom() | String.t()) :: integer() | atom()
      [
        (
          def encode(:UNKNOWN) do
            0
          end

          def encode("UNKNOWN") do
            0
          end
        ),
        (
          def encode(:AVAILABLE) do
            1
          end

          def encode("AVAILABLE") do
            1
          end
        ),
        (
          def encode(:NOT_AVAILABLE) do
            2
          end

          def encode("NOT_AVAILABLE") do
            2
          end
        )
      ]

      def encode(x) do
        x
      end

      @spec decode(integer()) :: atom() | integer()
      [
        def decode(0) do
          :UNKNOWN
        end,
        def decode(1) do
          :AVAILABLE
        end,
        def decode(2) do
          :NOT_AVAILABLE
        end
      ]

      def decode(x) do
        x
      end

      @spec constants() :: [{integer(), atom()}]
      def constants() do
        [{0, :UNKNOWN}, {1, :AVAILABLE}, {2, :NOT_AVAILABLE}]
      end

      @spec has_constant?(any()) :: boolean()
      (
        [
          def has_constant?(:UNKNOWN) do
            true
          end,
          def has_constant?(:AVAILABLE) do
            true
          end,
          def has_constant?(:NOT_AVAILABLE) do
            true
          end
        ]

        def has_constant?(_) do
          false
        end
      )
    )
  end,
  defmodule TransitRealtime.TripDescriptor.ScheduleRelationship do
    @moduledoc false
    (
      defstruct []

      (
        @spec default() :: :SCHEDULED
        def default() do
          :SCHEDULED
        end
      )

      @spec encode(atom() | String.t()) :: integer() | atom()
      [
        (
          def encode(:SCHEDULED) do
            0
          end

          def encode("SCHEDULED") do
            0
          end
        ),
        (
          def encode(:ADDED) do
            1
          end

          def encode("ADDED") do
            1
          end
        ),
        (
          def encode(:UNSCHEDULED) do
            2
          end

          def encode("UNSCHEDULED") do
            2
          end
        ),
        (
          def encode(:CANCELED) do
            3
          end

          def encode("CANCELED") do
            3
          end
        ),
        (
          def encode(:REPLACEMENT) do
            5
          end

          def encode("REPLACEMENT") do
            5
          end
        ),
        (
          def encode(:DUPLICATED) do
            6
          end

          def encode("DUPLICATED") do
            6
          end
        ),
        (
          def encode(:DELETED) do
            7
          end

          def encode("DELETED") do
            7
          end
        )
      ]

      def encode(x) do
        x
      end

      @spec decode(integer()) :: atom() | integer()
      [
        def decode(0) do
          :SCHEDULED
        end,
        def decode(1) do
          :ADDED
        end,
        def decode(2) do
          :UNSCHEDULED
        end,
        def decode(3) do
          :CANCELED
        end,
        def decode(5) do
          :REPLACEMENT
        end,
        def decode(6) do
          :DUPLICATED
        end,
        def decode(7) do
          :DELETED
        end
      ]

      def decode(x) do
        x
      end

      @spec constants() :: [{integer(), atom()}]
      def constants() do
        [
          {0, :SCHEDULED},
          {1, :ADDED},
          {2, :UNSCHEDULED},
          {3, :CANCELED},
          {5, :REPLACEMENT},
          {6, :DUPLICATED},
          {7, :DELETED}
        ]
      end

      @spec has_constant?(any()) :: boolean()
      (
        [
          def has_constant?(:SCHEDULED) do
            true
          end,
          def has_constant?(:ADDED) do
            true
          end,
          def has_constant?(:UNSCHEDULED) do
            true
          end,
          def has_constant?(:CANCELED) do
            true
          end,
          def has_constant?(:REPLACEMENT) do
            true
          end,
          def has_constant?(:DUPLICATED) do
            true
          end,
          def has_constant?(:DELETED) do
            true
          end
        ]

        def has_constant?(_) do
          false
        end
      )
    )
  end,
  defmodule TransitRealtime.TripUpdate.StopTimeUpdate.ScheduleRelationship do
    @moduledoc false
    (
      defstruct []

      (
        @spec default() :: :SCHEDULED
        def default() do
          :SCHEDULED
        end
      )

      @spec encode(atom() | String.t()) :: integer() | atom()
      [
        (
          def encode(:SCHEDULED) do
            0
          end

          def encode("SCHEDULED") do
            0
          end
        ),
        (
          def encode(:SKIPPED) do
            1
          end

          def encode("SKIPPED") do
            1
          end
        ),
        (
          def encode(:NO_DATA) do
            2
          end

          def encode("NO_DATA") do
            2
          end
        ),
        (
          def encode(:UNSCHEDULED) do
            3
          end

          def encode("UNSCHEDULED") do
            3
          end
        )
      ]

      def encode(x) do
        x
      end

      @spec decode(integer()) :: atom() | integer()
      [
        def decode(0) do
          :SCHEDULED
        end,
        def decode(1) do
          :SKIPPED
        end,
        def decode(2) do
          :NO_DATA
        end,
        def decode(3) do
          :UNSCHEDULED
        end
      ]

      def decode(x) do
        x
      end

      @spec constants() :: [{integer(), atom()}]
      def constants() do
        [{0, :SCHEDULED}, {1, :SKIPPED}, {2, :NO_DATA}, {3, :UNSCHEDULED}]
      end

      @spec has_constant?(any()) :: boolean()
      (
        [
          def has_constant?(:SCHEDULED) do
            true
          end,
          def has_constant?(:SKIPPED) do
            true
          end,
          def has_constant?(:NO_DATA) do
            true
          end,
          def has_constant?(:UNSCHEDULED) do
            true
          end
        ]

        def has_constant?(_) do
          false
        end
      )
    )
  end,
  defmodule TransitRealtime.VehicleDescriptor.WheelchairAccessible do
    @moduledoc false
    (
      defstruct []

      (
        @spec default() :: :NO_VALUE
        def default() do
          :NO_VALUE
        end
      )

      @spec encode(atom() | String.t()) :: integer() | atom()
      [
        (
          def encode(:NO_VALUE) do
            0
          end

          def encode("NO_VALUE") do
            0
          end
        ),
        (
          def encode(:UNKNOWN) do
            1
          end

          def encode("UNKNOWN") do
            1
          end
        ),
        (
          def encode(:WHEELCHAIR_ACCESSIBLE) do
            2
          end

          def encode("WHEELCHAIR_ACCESSIBLE") do
            2
          end
        ),
        (
          def encode(:WHEELCHAIR_INACCESSIBLE) do
            3
          end

          def encode("WHEELCHAIR_INACCESSIBLE") do
            3
          end
        )
      ]

      def encode(x) do
        x
      end

      @spec decode(integer()) :: atom() | integer()
      [
        def decode(0) do
          :NO_VALUE
        end,
        def decode(1) do
          :UNKNOWN
        end,
        def decode(2) do
          :WHEELCHAIR_ACCESSIBLE
        end,
        def decode(3) do
          :WHEELCHAIR_INACCESSIBLE
        end
      ]

      def decode(x) do
        x
      end

      @spec constants() :: [{integer(), atom()}]
      def constants() do
        [
          {0, :NO_VALUE},
          {1, :UNKNOWN},
          {2, :WHEELCHAIR_ACCESSIBLE},
          {3, :WHEELCHAIR_INACCESSIBLE}
        ]
      end

      @spec has_constant?(any()) :: boolean()
      (
        [
          def has_constant?(:NO_VALUE) do
            true
          end,
          def has_constant?(:UNKNOWN) do
            true
          end,
          def has_constant?(:WHEELCHAIR_ACCESSIBLE) do
            true
          end,
          def has_constant?(:WHEELCHAIR_INACCESSIBLE) do
            true
          end
        ]

        def has_constant?(_) do
          false
        end
      )
    )
  end,
  defmodule TransitRealtime.VehiclePosition.CongestionLevel do
    @moduledoc false
    (
      defstruct []

      (
        @spec default() :: :UNKNOWN_CONGESTION_LEVEL
        def default() do
          :UNKNOWN_CONGESTION_LEVEL
        end
      )

      @spec encode(atom() | String.t()) :: integer() | atom()
      [
        (
          def encode(:UNKNOWN_CONGESTION_LEVEL) do
            0
          end

          def encode("UNKNOWN_CONGESTION_LEVEL") do
            0
          end
        ),
        (
          def encode(:RUNNING_SMOOTHLY) do
            1
          end

          def encode("RUNNING_SMOOTHLY") do
            1
          end
        ),
        (
          def encode(:STOP_AND_GO) do
            2
          end

          def encode("STOP_AND_GO") do
            2
          end
        ),
        (
          def encode(:CONGESTION) do
            3
          end

          def encode("CONGESTION") do
            3
          end
        ),
        (
          def encode(:SEVERE_CONGESTION) do
            4
          end

          def encode("SEVERE_CONGESTION") do
            4
          end
        )
      ]

      def encode(x) do
        x
      end

      @spec decode(integer()) :: atom() | integer()
      [
        def decode(0) do
          :UNKNOWN_CONGESTION_LEVEL
        end,
        def decode(1) do
          :RUNNING_SMOOTHLY
        end,
        def decode(2) do
          :STOP_AND_GO
        end,
        def decode(3) do
          :CONGESTION
        end,
        def decode(4) do
          :SEVERE_CONGESTION
        end
      ]

      def decode(x) do
        x
      end

      @spec constants() :: [{integer(), atom()}]
      def constants() do
        [
          {0, :UNKNOWN_CONGESTION_LEVEL},
          {1, :RUNNING_SMOOTHLY},
          {2, :STOP_AND_GO},
          {3, :CONGESTION},
          {4, :SEVERE_CONGESTION}
        ]
      end

      @spec has_constant?(any()) :: boolean()
      (
        [
          def has_constant?(:UNKNOWN_CONGESTION_LEVEL) do
            true
          end,
          def has_constant?(:RUNNING_SMOOTHLY) do
            true
          end,
          def has_constant?(:STOP_AND_GO) do
            true
          end,
          def has_constant?(:CONGESTION) do
            true
          end,
          def has_constant?(:SEVERE_CONGESTION) do
            true
          end
        ]

        def has_constant?(_) do
          false
        end
      )
    )
  end,
  defmodule TransitRealtime.VehiclePosition.OccupancyStatus do
    @moduledoc false
    (
      defstruct []

      (
        @spec default() :: :EMPTY
        def default() do
          :EMPTY
        end
      )

      @spec encode(atom() | String.t()) :: integer() | atom()
      [
        (
          def encode(:EMPTY) do
            0
          end

          def encode("EMPTY") do
            0
          end
        ),
        (
          def encode(:MANY_SEATS_AVAILABLE) do
            1
          end

          def encode("MANY_SEATS_AVAILABLE") do
            1
          end
        ),
        (
          def encode(:FEW_SEATS_AVAILABLE) do
            2
          end

          def encode("FEW_SEATS_AVAILABLE") do
            2
          end
        ),
        (
          def encode(:STANDING_ROOM_ONLY) do
            3
          end

          def encode("STANDING_ROOM_ONLY") do
            3
          end
        ),
        (
          def encode(:CRUSHED_STANDING_ROOM_ONLY) do
            4
          end

          def encode("CRUSHED_STANDING_ROOM_ONLY") do
            4
          end
        ),
        (
          def encode(:FULL) do
            5
          end

          def encode("FULL") do
            5
          end
        ),
        (
          def encode(:NOT_ACCEPTING_PASSENGERS) do
            6
          end

          def encode("NOT_ACCEPTING_PASSENGERS") do
            6
          end
        ),
        (
          def encode(:NO_DATA_AVAILABLE) do
            7
          end

          def encode("NO_DATA_AVAILABLE") do
            7
          end
        ),
        (
          def encode(:NOT_BOARDABLE) do
            8
          end

          def encode("NOT_BOARDABLE") do
            8
          end
        )
      ]

      def encode(x) do
        x
      end

      @spec decode(integer()) :: atom() | integer()
      [
        def decode(0) do
          :EMPTY
        end,
        def decode(1) do
          :MANY_SEATS_AVAILABLE
        end,
        def decode(2) do
          :FEW_SEATS_AVAILABLE
        end,
        def decode(3) do
          :STANDING_ROOM_ONLY
        end,
        def decode(4) do
          :CRUSHED_STANDING_ROOM_ONLY
        end,
        def decode(5) do
          :FULL
        end,
        def decode(6) do
          :NOT_ACCEPTING_PASSENGERS
        end,
        def decode(7) do
          :NO_DATA_AVAILABLE
        end,
        def decode(8) do
          :NOT_BOARDABLE
        end
      ]

      def decode(x) do
        x
      end

      @spec constants() :: [{integer(), atom()}]
      def constants() do
        [
          {0, :EMPTY},
          {1, :MANY_SEATS_AVAILABLE},
          {2, :FEW_SEATS_AVAILABLE},
          {3, :STANDING_ROOM_ONLY},
          {4, :CRUSHED_STANDING_ROOM_ONLY},
          {5, :FULL},
          {6, :NOT_ACCEPTING_PASSENGERS},
          {7, :NO_DATA_AVAILABLE},
          {8, :NOT_BOARDABLE}
        ]
      end

      @spec has_constant?(any()) :: boolean()
      (
        [
          def has_constant?(:EMPTY) do
            true
          end,
          def has_constant?(:MANY_SEATS_AVAILABLE) do
            true
          end,
          def has_constant?(:FEW_SEATS_AVAILABLE) do
            true
          end,
          def has_constant?(:STANDING_ROOM_ONLY) do
            true
          end,
          def has_constant?(:CRUSHED_STANDING_ROOM_ONLY) do
            true
          end,
          def has_constant?(:FULL) do
            true
          end,
          def has_constant?(:NOT_ACCEPTING_PASSENGERS) do
            true
          end,
          def has_constant?(:NO_DATA_AVAILABLE) do
            true
          end,
          def has_constant?(:NOT_BOARDABLE) do
            true
          end
        ]

        def has_constant?(_) do
          false
        end
      )
    )
  end,
  defmodule TransitRealtime.VehiclePosition.VehicleStopStatus do
    @moduledoc false
    (
      defstruct []

      (
        @spec default() :: :INCOMING_AT
        def default() do
          :INCOMING_AT
        end
      )

      @spec encode(atom() | String.t()) :: integer() | atom()
      [
        (
          def encode(:INCOMING_AT) do
            0
          end

          def encode("INCOMING_AT") do
            0
          end
        ),
        (
          def encode(:STOPPED_AT) do
            1
          end

          def encode("STOPPED_AT") do
            1
          end
        ),
        (
          def encode(:IN_TRANSIT_TO) do
            2
          end

          def encode("IN_TRANSIT_TO") do
            2
          end
        )
      ]

      def encode(x) do
        x
      end

      @spec decode(integer()) :: atom() | integer()
      [
        def decode(0) do
          :INCOMING_AT
        end,
        def decode(1) do
          :STOPPED_AT
        end,
        def decode(2) do
          :IN_TRANSIT_TO
        end
      ]

      def decode(x) do
        x
      end

      @spec constants() :: [{integer(), atom()}]
      def constants() do
        [{0, :INCOMING_AT}, {1, :STOPPED_AT}, {2, :IN_TRANSIT_TO}]
      end

      @spec has_constant?(any()) :: boolean()
      (
        [
          def has_constant?(:INCOMING_AT) do
            true
          end,
          def has_constant?(:STOPPED_AT) do
            true
          end,
          def has_constant?(:IN_TRANSIT_TO) do
            true
          end
        ]

        def has_constant?(_) do
          false
        end
      )
    )
  end,
  defmodule TransitRealtime.Alert do
    @moduledoc false
    defstruct active_period: [],
              informed_entity: [],
              cause: nil,
              effect: nil,
              url: nil,
              header_text: nil,
              description_text: nil,
              tts_header_text: nil,
              tts_description_text: nil,
              severity_level: nil,
              image: nil,
              image_alternative_text: nil,
              cause_detail: nil,
              effect_detail: nil,
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_active_period(msg)
          |> encode_informed_entity(msg)
          |> encode_cause(msg)
          |> encode_effect(msg)
          |> encode_url(msg)
          |> encode_header_text(msg)
          |> encode_description_text(msg)
          |> encode_tts_header_text(msg)
          |> encode_tts_description_text(msg)
          |> encode_severity_level(msg)
          |> encode_image(msg)
          |> encode_image_alternative_text(msg)
          |> encode_cause_detail(msg)
          |> encode_effect_detail(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_active_period(acc, msg) do
          try do
            case msg.active_period do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "\n", Protox.Encode.encode_message(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:active_period, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_informed_entity(acc, msg) do
          try do
            case msg.informed_entity do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "*", Protox.Encode.encode_message(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:informed_entity, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_cause(acc, msg) do
          try do
            case msg.cause do
              nil ->
                acc

              _ ->
                [
                  acc,
                  "0",
                  msg.cause |> TransitRealtime.Alert.Cause.encode() |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:cause, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_effect(acc, msg) do
          try do
            case msg.effect do
              nil ->
                acc

              _ ->
                [
                  acc,
                  "8",
                  msg.effect
                  |> TransitRealtime.Alert.Effect.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:effect, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_url(acc, msg) do
          try do
            case msg.url do
              nil -> acc
              _ -> [acc, "B", Protox.Encode.encode_message(msg.url)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:url, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_header_text(acc, msg) do
          try do
            case msg.header_text do
              nil -> acc
              _ -> [acc, "R", Protox.Encode.encode_message(msg.header_text)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:header_text, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_description_text(acc, msg) do
          try do
            case msg.description_text do
              nil -> acc
              _ -> [acc, "Z", Protox.Encode.encode_message(msg.description_text)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:description_text, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_tts_header_text(acc, msg) do
          try do
            case msg.tts_header_text do
              nil -> acc
              _ -> [acc, "b", Protox.Encode.encode_message(msg.tts_header_text)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:tts_header_text, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_tts_description_text(acc, msg) do
          try do
            case msg.tts_description_text do
              nil -> acc
              _ -> [acc, "j", Protox.Encode.encode_message(msg.tts_description_text)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:tts_description_text, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_severity_level(acc, msg) do
          try do
            case msg.severity_level do
              nil ->
                acc

              _ ->
                [
                  acc,
                  "p",
                  msg.severity_level
                  |> TransitRealtime.Alert.SeverityLevel.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:severity_level, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_image(acc, msg) do
          try do
            case msg.image do
              nil -> acc
              _ -> [acc, "z", Protox.Encode.encode_message(msg.image)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:image, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_image_alternative_text(acc, msg) do
          try do
            case msg.image_alternative_text do
              nil -> acc
              _ -> [acc, "\x82\x01", Protox.Encode.encode_message(msg.image_alternative_text)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:image_alternative_text, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_cause_detail(acc, msg) do
          try do
            case msg.cause_detail do
              nil -> acc
              _ -> [acc, "\x8A\x01", Protox.Encode.encode_message(msg.cause_detail)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:cause_detail, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_effect_detail(acc, msg) do
          try do
            case msg.effect_detail do
              nil -> acc
              _ -> [acc, "\x92\x01", Protox.Encode.encode_message(msg.effect_detail)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:effect_detail, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.Alert))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   active_period:
                     msg.active_period ++ [TransitRealtime.TimeRange.decode!(delimited)]
                 ], rest}

              {5, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   informed_entity:
                     msg.informed_entity ++ [TransitRealtime.EntitySelector.decode!(delimited)]
                 ], rest}

              {6, _, bytes} ->
                {value, rest} = Protox.Decode.parse_enum(bytes, TransitRealtime.Alert.Cause)
                {[cause: value], rest}

              {7, _, bytes} ->
                {value, rest} = Protox.Decode.parse_enum(bytes, TransitRealtime.Alert.Effect)
                {[effect: value], rest}

              {8, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   url:
                     Protox.MergeMessage.merge(
                       msg.url,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {10, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   header_text:
                     Protox.MergeMessage.merge(
                       msg.header_text,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {11, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   description_text:
                     Protox.MergeMessage.merge(
                       msg.description_text,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {12, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   tts_header_text:
                     Protox.MergeMessage.merge(
                       msg.tts_header_text,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {13, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   tts_description_text:
                     Protox.MergeMessage.merge(
                       msg.tts_description_text,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {14, _, bytes} ->
                {value, rest} =
                  Protox.Decode.parse_enum(bytes, TransitRealtime.Alert.SeverityLevel)

                {[severity_level: value], rest}

              {15, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   image:
                     Protox.MergeMessage.merge(
                       msg.image,
                       TransitRealtime.TranslatedImage.decode!(delimited)
                     )
                 ], rest}

              {16, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   image_alternative_text:
                     Protox.MergeMessage.merge(
                       msg.image_alternative_text,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {17, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   cause_detail:
                     Protox.MergeMessage.merge(
                       msg.cause_detail,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {18, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   effect_detail:
                     Protox.MergeMessage.merge(
                       msg.effect_detail,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.Alert,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:active_period, :unpacked, {:message, TransitRealtime.TimeRange}},
          5 => {:informed_entity, :unpacked, {:message, TransitRealtime.EntitySelector}},
          6 => {:cause, {:scalar, :UNKNOWN_CAUSE}, {:enum, TransitRealtime.Alert.Cause}},
          7 => {:effect, {:scalar, :UNKNOWN_EFFECT}, {:enum, TransitRealtime.Alert.Effect}},
          8 => {:url, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          10 => {:header_text, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          11 => {:description_text, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          12 => {:tts_header_text, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          13 =>
            {:tts_description_text, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          14 =>
            {:severity_level, {:scalar, :UNKNOWN_SEVERITY},
             {:enum, TransitRealtime.Alert.SeverityLevel}},
          15 => {:image, {:scalar, nil}, {:message, TransitRealtime.TranslatedImage}},
          16 =>
            {:image_alternative_text, {:scalar, nil},
             {:message, TransitRealtime.TranslatedString}},
          17 => {:cause_detail, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          18 => {:effect_detail, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          active_period: {1, :unpacked, {:message, TransitRealtime.TimeRange}},
          cause: {6, {:scalar, :UNKNOWN_CAUSE}, {:enum, TransitRealtime.Alert.Cause}},
          cause_detail: {17, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          description_text: {11, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          effect: {7, {:scalar, :UNKNOWN_EFFECT}, {:enum, TransitRealtime.Alert.Effect}},
          effect_detail: {18, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          header_text: {10, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          image: {15, {:scalar, nil}, {:message, TransitRealtime.TranslatedImage}},
          image_alternative_text:
            {16, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          informed_entity: {5, :unpacked, {:message, TransitRealtime.EntitySelector}},
          severity_level:
            {14, {:scalar, :UNKNOWN_SEVERITY}, {:enum, TransitRealtime.Alert.SeverityLevel}},
          tts_description_text:
            {13, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          tts_header_text: {12, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          url: {8, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "activePeriod",
            kind: :unpacked,
            label: :repeated,
            name: :active_period,
            tag: 1,
            type: {:message, TransitRealtime.TimeRange}
          },
          %{
            __struct__: Protox.Field,
            json_name: "informedEntity",
            kind: :unpacked,
            label: :repeated,
            name: :informed_entity,
            tag: 5,
            type: {:message, TransitRealtime.EntitySelector}
          },
          %{
            __struct__: Protox.Field,
            json_name: "cause",
            kind: {:scalar, :UNKNOWN_CAUSE},
            label: :optional,
            name: :cause,
            tag: 6,
            type: {:enum, TransitRealtime.Alert.Cause}
          },
          %{
            __struct__: Protox.Field,
            json_name: "effect",
            kind: {:scalar, :UNKNOWN_EFFECT},
            label: :optional,
            name: :effect,
            tag: 7,
            type: {:enum, TransitRealtime.Alert.Effect}
          },
          %{
            __struct__: Protox.Field,
            json_name: "url",
            kind: {:scalar, nil},
            label: :optional,
            name: :url,
            tag: 8,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "headerText",
            kind: {:scalar, nil},
            label: :optional,
            name: :header_text,
            tag: 10,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "descriptionText",
            kind: {:scalar, nil},
            label: :optional,
            name: :description_text,
            tag: 11,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "ttsHeaderText",
            kind: {:scalar, nil},
            label: :optional,
            name: :tts_header_text,
            tag: 12,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "ttsDescriptionText",
            kind: {:scalar, nil},
            label: :optional,
            name: :tts_description_text,
            tag: 13,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "severityLevel",
            kind: {:scalar, :UNKNOWN_SEVERITY},
            label: :optional,
            name: :severity_level,
            tag: 14,
            type: {:enum, TransitRealtime.Alert.SeverityLevel}
          },
          %{
            __struct__: Protox.Field,
            json_name: "image",
            kind: {:scalar, nil},
            label: :optional,
            name: :image,
            tag: 15,
            type: {:message, TransitRealtime.TranslatedImage}
          },
          %{
            __struct__: Protox.Field,
            json_name: "imageAlternativeText",
            kind: {:scalar, nil},
            label: :optional,
            name: :image_alternative_text,
            tag: 16,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "causeDetail",
            kind: {:scalar, nil},
            label: :optional,
            name: :cause_detail,
            tag: 17,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "effectDetail",
            kind: {:scalar, nil},
            label: :optional,
            name: :effect_detail,
            tag: 18,
            type: {:message, TransitRealtime.TranslatedString}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:active_period) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "activePeriod",
               kind: :unpacked,
               label: :repeated,
               name: :active_period,
               tag: 1,
               type: {:message, TransitRealtime.TimeRange}
             }}
          end

          def field_def("activePeriod") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "activePeriod",
               kind: :unpacked,
               label: :repeated,
               name: :active_period,
               tag: 1,
               type: {:message, TransitRealtime.TimeRange}
             }}
          end

          def field_def("active_period") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "activePeriod",
               kind: :unpacked,
               label: :repeated,
               name: :active_period,
               tag: 1,
               type: {:message, TransitRealtime.TimeRange}
             }}
          end
        ),
        (
          def field_def(:informed_entity) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "informedEntity",
               kind: :unpacked,
               label: :repeated,
               name: :informed_entity,
               tag: 5,
               type: {:message, TransitRealtime.EntitySelector}
             }}
          end

          def field_def("informedEntity") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "informedEntity",
               kind: :unpacked,
               label: :repeated,
               name: :informed_entity,
               tag: 5,
               type: {:message, TransitRealtime.EntitySelector}
             }}
          end

          def field_def("informed_entity") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "informedEntity",
               kind: :unpacked,
               label: :repeated,
               name: :informed_entity,
               tag: 5,
               type: {:message, TransitRealtime.EntitySelector}
             }}
          end
        ),
        (
          def field_def(:cause) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "cause",
               kind: {:scalar, :UNKNOWN_CAUSE},
               label: :optional,
               name: :cause,
               tag: 6,
               type: {:enum, TransitRealtime.Alert.Cause}
             }}
          end

          def field_def("cause") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "cause",
               kind: {:scalar, :UNKNOWN_CAUSE},
               label: :optional,
               name: :cause,
               tag: 6,
               type: {:enum, TransitRealtime.Alert.Cause}
             }}
          end

          []
        ),
        (
          def field_def(:effect) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "effect",
               kind: {:scalar, :UNKNOWN_EFFECT},
               label: :optional,
               name: :effect,
               tag: 7,
               type: {:enum, TransitRealtime.Alert.Effect}
             }}
          end

          def field_def("effect") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "effect",
               kind: {:scalar, :UNKNOWN_EFFECT},
               label: :optional,
               name: :effect,
               tag: 7,
               type: {:enum, TransitRealtime.Alert.Effect}
             }}
          end

          []
        ),
        (
          def field_def(:url) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "url",
               kind: {:scalar, nil},
               label: :optional,
               name: :url,
               tag: 8,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("url") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "url",
               kind: {:scalar, nil},
               label: :optional,
               name: :url,
               tag: 8,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          []
        ),
        (
          def field_def(:header_text) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "headerText",
               kind: {:scalar, nil},
               label: :optional,
               name: :header_text,
               tag: 10,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("headerText") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "headerText",
               kind: {:scalar, nil},
               label: :optional,
               name: :header_text,
               tag: 10,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("header_text") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "headerText",
               kind: {:scalar, nil},
               label: :optional,
               name: :header_text,
               tag: 10,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        (
          def field_def(:description_text) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "descriptionText",
               kind: {:scalar, nil},
               label: :optional,
               name: :description_text,
               tag: 11,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("descriptionText") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "descriptionText",
               kind: {:scalar, nil},
               label: :optional,
               name: :description_text,
               tag: 11,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("description_text") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "descriptionText",
               kind: {:scalar, nil},
               label: :optional,
               name: :description_text,
               tag: 11,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        (
          def field_def(:tts_header_text) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "ttsHeaderText",
               kind: {:scalar, nil},
               label: :optional,
               name: :tts_header_text,
               tag: 12,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("ttsHeaderText") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "ttsHeaderText",
               kind: {:scalar, nil},
               label: :optional,
               name: :tts_header_text,
               tag: 12,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("tts_header_text") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "ttsHeaderText",
               kind: {:scalar, nil},
               label: :optional,
               name: :tts_header_text,
               tag: 12,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        (
          def field_def(:tts_description_text) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "ttsDescriptionText",
               kind: {:scalar, nil},
               label: :optional,
               name: :tts_description_text,
               tag: 13,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("ttsDescriptionText") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "ttsDescriptionText",
               kind: {:scalar, nil},
               label: :optional,
               name: :tts_description_text,
               tag: 13,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("tts_description_text") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "ttsDescriptionText",
               kind: {:scalar, nil},
               label: :optional,
               name: :tts_description_text,
               tag: 13,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        (
          def field_def(:severity_level) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "severityLevel",
               kind: {:scalar, :UNKNOWN_SEVERITY},
               label: :optional,
               name: :severity_level,
               tag: 14,
               type: {:enum, TransitRealtime.Alert.SeverityLevel}
             }}
          end

          def field_def("severityLevel") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "severityLevel",
               kind: {:scalar, :UNKNOWN_SEVERITY},
               label: :optional,
               name: :severity_level,
               tag: 14,
               type: {:enum, TransitRealtime.Alert.SeverityLevel}
             }}
          end

          def field_def("severity_level") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "severityLevel",
               kind: {:scalar, :UNKNOWN_SEVERITY},
               label: :optional,
               name: :severity_level,
               tag: 14,
               type: {:enum, TransitRealtime.Alert.SeverityLevel}
             }}
          end
        ),
        (
          def field_def(:image) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "image",
               kind: {:scalar, nil},
               label: :optional,
               name: :image,
               tag: 15,
               type: {:message, TransitRealtime.TranslatedImage}
             }}
          end

          def field_def("image") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "image",
               kind: {:scalar, nil},
               label: :optional,
               name: :image,
               tag: 15,
               type: {:message, TransitRealtime.TranslatedImage}
             }}
          end

          []
        ),
        (
          def field_def(:image_alternative_text) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "imageAlternativeText",
               kind: {:scalar, nil},
               label: :optional,
               name: :image_alternative_text,
               tag: 16,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("imageAlternativeText") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "imageAlternativeText",
               kind: {:scalar, nil},
               label: :optional,
               name: :image_alternative_text,
               tag: 16,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("image_alternative_text") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "imageAlternativeText",
               kind: {:scalar, nil},
               label: :optional,
               name: :image_alternative_text,
               tag: 16,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        (
          def field_def(:cause_detail) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "causeDetail",
               kind: {:scalar, nil},
               label: :optional,
               name: :cause_detail,
               tag: 17,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("causeDetail") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "causeDetail",
               kind: {:scalar, nil},
               label: :optional,
               name: :cause_detail,
               tag: 17,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("cause_detail") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "causeDetail",
               kind: {:scalar, nil},
               label: :optional,
               name: :cause_detail,
               tag: 17,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        (
          def field_def(:effect_detail) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "effectDetail",
               kind: {:scalar, nil},
               label: :optional,
               name: :effect_detail,
               tag: 18,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("effectDetail") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "effectDetail",
               kind: {:scalar, nil},
               label: :optional,
               name: :effect_detail,
               tag: 18,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("effect_detail") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "effectDetail",
               kind: {:scalar, nil},
               label: :optional,
               name: :effect_detail,
               tag: 18,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:active_period) do
        {:error, :no_default_value}
      end,
      def default(:informed_entity) do
        {:error, :no_default_value}
      end,
      def default(:cause) do
        {:ok, :UNKNOWN_CAUSE}
      end,
      def default(:effect) do
        {:ok, :UNKNOWN_EFFECT}
      end,
      def default(:url) do
        {:ok, nil}
      end,
      def default(:header_text) do
        {:ok, nil}
      end,
      def default(:description_text) do
        {:ok, nil}
      end,
      def default(:tts_header_text) do
        {:ok, nil}
      end,
      def default(:tts_description_text) do
        {:ok, nil}
      end,
      def default(:severity_level) do
        {:ok, :UNKNOWN_SEVERITY}
      end,
      def default(:image) do
        {:ok, nil}
      end,
      def default(:image_alternative_text) do
        {:ok, nil}
      end,
      def default(:cause_detail) do
        {:ok, nil}
      end,
      def default(:effect_detail) do
        {:ok, nil}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.EntitySelector do
    @moduledoc false
    defstruct agency_id: nil,
              route_id: nil,
              route_type: nil,
              trip: nil,
              stop_id: nil,
              direction_id: nil,
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_agency_id(msg)
          |> encode_route_id(msg)
          |> encode_route_type(msg)
          |> encode_trip(msg)
          |> encode_stop_id(msg)
          |> encode_direction_id(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_agency_id(acc, msg) do
          try do
            case msg.agency_id do
              nil -> acc
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.agency_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:agency_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_route_id(acc, msg) do
          try do
            case msg.route_id do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.route_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:route_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_route_type(acc, msg) do
          try do
            case msg.route_type do
              nil -> acc
              _ -> [acc, "\x18", Protox.Encode.encode_int32(msg.route_type)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:route_type, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_trip(acc, msg) do
          try do
            case msg.trip do
              nil -> acc
              _ -> [acc, "\"", Protox.Encode.encode_message(msg.trip)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:trip, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_stop_id(acc, msg) do
          try do
            case msg.stop_id do
              nil -> acc
              _ -> [acc, "*", Protox.Encode.encode_string(msg.stop_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_direction_id(acc, msg) do
          try do
            case msg.direction_id do
              nil -> acc
              _ -> [acc, "0", Protox.Encode.encode_uint32(msg.direction_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:direction_id, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.EntitySelector))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[agency_id: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[route_id: Protox.Decode.validate_string!(delimited)], rest}

              {3, _, bytes} ->
                {value, rest} = Protox.Decode.parse_int32(bytes)
                {[route_type: value], rest}

              {4, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   trip:
                     Protox.MergeMessage.merge(
                       msg.trip,
                       TransitRealtime.TripDescriptor.decode!(delimited)
                     )
                 ], rest}

              {5, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[stop_id: Protox.Decode.validate_string!(delimited)], rest}

              {6, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint32(bytes)
                {[direction_id: value], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.EntitySelector,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:agency_id, {:scalar, ""}, :string},
          2 => {:route_id, {:scalar, ""}, :string},
          3 => {:route_type, {:scalar, 0}, :int32},
          4 => {:trip, {:scalar, nil}, {:message, TransitRealtime.TripDescriptor}},
          5 => {:stop_id, {:scalar, ""}, :string},
          6 => {:direction_id, {:scalar, 0}, :uint32}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          agency_id: {1, {:scalar, ""}, :string},
          direction_id: {6, {:scalar, 0}, :uint32},
          route_id: {2, {:scalar, ""}, :string},
          route_type: {3, {:scalar, 0}, :int32},
          stop_id: {5, {:scalar, ""}, :string},
          trip: {4, {:scalar, nil}, {:message, TransitRealtime.TripDescriptor}}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "agencyId",
            kind: {:scalar, ""},
            label: :optional,
            name: :agency_id,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "routeId",
            kind: {:scalar, ""},
            label: :optional,
            name: :route_id,
            tag: 2,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "routeType",
            kind: {:scalar, 0},
            label: :optional,
            name: :route_type,
            tag: 3,
            type: :int32
          },
          %{
            __struct__: Protox.Field,
            json_name: "trip",
            kind: {:scalar, nil},
            label: :optional,
            name: :trip,
            tag: 4,
            type: {:message, TransitRealtime.TripDescriptor}
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopId",
            kind: {:scalar, ""},
            label: :optional,
            name: :stop_id,
            tag: 5,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "directionId",
            kind: {:scalar, 0},
            label: :optional,
            name: :direction_id,
            tag: 6,
            type: :uint32
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:agency_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "agencyId",
               kind: {:scalar, ""},
               label: :optional,
               name: :agency_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("agencyId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "agencyId",
               kind: {:scalar, ""},
               label: :optional,
               name: :agency_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("agency_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "agencyId",
               kind: {:scalar, ""},
               label: :optional,
               name: :agency_id,
               tag: 1,
               type: :string
             }}
          end
        ),
        (
          def field_def(:route_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "routeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :route_id,
               tag: 2,
               type: :string
             }}
          end

          def field_def("routeId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "routeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :route_id,
               tag: 2,
               type: :string
             }}
          end

          def field_def("route_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "routeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :route_id,
               tag: 2,
               type: :string
             }}
          end
        ),
        (
          def field_def(:route_type) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "routeType",
               kind: {:scalar, 0},
               label: :optional,
               name: :route_type,
               tag: 3,
               type: :int32
             }}
          end

          def field_def("routeType") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "routeType",
               kind: {:scalar, 0},
               label: :optional,
               name: :route_type,
               tag: 3,
               type: :int32
             }}
          end

          def field_def("route_type") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "routeType",
               kind: {:scalar, 0},
               label: :optional,
               name: :route_type,
               tag: 3,
               type: :int32
             }}
          end
        ),
        (
          def field_def(:trip) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "trip",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip,
               tag: 4,
               type: {:message, TransitRealtime.TripDescriptor}
             }}
          end

          def field_def("trip") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "trip",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip,
               tag: 4,
               type: {:message, TransitRealtime.TripDescriptor}
             }}
          end

          []
        ),
        (
          def field_def(:stop_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 5,
               type: :string
             }}
          end

          def field_def("stopId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 5,
               type: :string
             }}
          end

          def field_def("stop_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 5,
               type: :string
             }}
          end
        ),
        (
          def field_def(:direction_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "directionId",
               kind: {:scalar, 0},
               label: :optional,
               name: :direction_id,
               tag: 6,
               type: :uint32
             }}
          end

          def field_def("directionId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "directionId",
               kind: {:scalar, 0},
               label: :optional,
               name: :direction_id,
               tag: 6,
               type: :uint32
             }}
          end

          def field_def("direction_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "directionId",
               kind: {:scalar, 0},
               label: :optional,
               name: :direction_id,
               tag: 6,
               type: :uint32
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:agency_id) do
        {:ok, ""}
      end,
      def default(:route_id) do
        {:ok, ""}
      end,
      def default(:route_type) do
        {:ok, 0}
      end,
      def default(:trip) do
        {:ok, nil}
      end,
      def default(:stop_id) do
        {:ok, ""}
      end,
      def default(:direction_id) do
        {:ok, 0}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.FeedEntity do
    @moduledoc false
    defstruct id: nil,
              is_deleted: nil,
              trip_update: nil,
              vehicle: nil,
              alert: nil,
              shape: nil,
              stop: nil,
              trip_modifications: nil,
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_id(msg)
          |> encode_is_deleted(msg)
          |> encode_trip_update(msg)
          |> encode_vehicle(msg)
          |> encode_alert(msg)
          |> encode_shape(msg)
          |> encode_stop(msg)
          |> encode_trip_modifications(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_id(acc, msg) do
          try do
            case msg.id do
              nil -> raise Protox.RequiredFieldsError.new([:id])
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_is_deleted(acc, msg) do
          try do
            case msg.is_deleted do
              nil -> acc
              _ -> [acc, "\x10", Protox.Encode.encode_bool(msg.is_deleted)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:is_deleted, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_trip_update(acc, msg) do
          try do
            case msg.trip_update do
              nil -> acc
              _ -> [acc, "\x1A", Protox.Encode.encode_message(msg.trip_update)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:trip_update, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_vehicle(acc, msg) do
          try do
            case msg.vehicle do
              nil -> acc
              _ -> [acc, "\"", Protox.Encode.encode_message(msg.vehicle)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:vehicle, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_alert(acc, msg) do
          try do
            case msg.alert do
              nil -> acc
              _ -> [acc, "*", Protox.Encode.encode_message(msg.alert)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:alert, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_shape(acc, msg) do
          try do
            case msg.shape do
              nil -> acc
              _ -> [acc, "2", Protox.Encode.encode_message(msg.shape)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:shape, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_stop(acc, msg) do
          try do
            case msg.stop do
              nil -> acc
              _ -> [acc, ":", Protox.Encode.encode_message(msg.stop)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_trip_modifications(acc, msg) do
          try do
            case msg.trip_modifications do
              nil -> acc
              _ -> [acc, "B", Protox.Encode.encode_message(msg.trip_modifications)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:trip_modifications, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            {msg, set_fields} = parse_key_value([], bytes, struct(TransitRealtime.FeedEntity))

            case [:id] -- set_fields do
              [] -> msg
              missing_fields -> raise Protox.RequiredFieldsError.new(missing_fields)
            end
          end
        )
      )

      (
        @spec parse_key_value([atom], binary, struct) :: {struct, [atom]}
        defp parse_key_value(set_fields, <<>>, msg) do
          {msg, set_fields}
        end

        defp parse_key_value(set_fields, bytes, msg) do
          {new_set_fields, field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[:id | set_fields], [id: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {value, rest} = Protox.Decode.parse_bool(bytes)
                {[:is_deleted | set_fields], [is_deleted: value], rest}

              {3, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:trip_update | set_fields],
                 [
                   trip_update:
                     Protox.MergeMessage.merge(
                       msg.trip_update,
                       TransitRealtime.TripUpdate.decode!(delimited)
                     )
                 ], rest}

              {4, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:vehicle | set_fields],
                 [
                   vehicle:
                     Protox.MergeMessage.merge(
                       msg.vehicle,
                       TransitRealtime.VehiclePosition.decode!(delimited)
                     )
                 ], rest}

              {5, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:alert | set_fields],
                 [
                   alert:
                     Protox.MergeMessage.merge(
                       msg.alert,
                       TransitRealtime.Alert.decode!(delimited)
                     )
                 ], rest}

              {6, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:shape | set_fields],
                 [
                   shape:
                     Protox.MergeMessage.merge(
                       msg.shape,
                       TransitRealtime.Shape.decode!(delimited)
                     )
                 ], rest}

              {7, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:stop | set_fields],
                 [
                   stop:
                     Protox.MergeMessage.merge(msg.stop, TransitRealtime.Stop.decode!(delimited))
                 ], rest}

              {8, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:trip_modifications | set_fields],
                 [
                   trip_modifications:
                     Protox.MergeMessage.merge(
                       msg.trip_modifications,
                       TransitRealtime.TripModifications.decode!(delimited)
                     )
                 ], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {set_fields,
                 [
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(new_set_fields, rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.FeedEntity,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:id, {:scalar, ""}, :string},
          2 => {:is_deleted, {:scalar, false}, :bool},
          3 => {:trip_update, {:scalar, nil}, {:message, TransitRealtime.TripUpdate}},
          4 => {:vehicle, {:scalar, nil}, {:message, TransitRealtime.VehiclePosition}},
          5 => {:alert, {:scalar, nil}, {:message, TransitRealtime.Alert}},
          6 => {:shape, {:scalar, nil}, {:message, TransitRealtime.Shape}},
          7 => {:stop, {:scalar, nil}, {:message, TransitRealtime.Stop}},
          8 =>
            {:trip_modifications, {:scalar, nil}, {:message, TransitRealtime.TripModifications}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          alert: {5, {:scalar, nil}, {:message, TransitRealtime.Alert}},
          id: {1, {:scalar, ""}, :string},
          is_deleted: {2, {:scalar, false}, :bool},
          shape: {6, {:scalar, nil}, {:message, TransitRealtime.Shape}},
          stop: {7, {:scalar, nil}, {:message, TransitRealtime.Stop}},
          trip_modifications: {8, {:scalar, nil}, {:message, TransitRealtime.TripModifications}},
          trip_update: {3, {:scalar, nil}, {:message, TransitRealtime.TripUpdate}},
          vehicle: {4, {:scalar, nil}, {:message, TransitRealtime.VehiclePosition}}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "id",
            kind: {:scalar, ""},
            label: :required,
            name: :id,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "isDeleted",
            kind: {:scalar, false},
            label: :optional,
            name: :is_deleted,
            tag: 2,
            type: :bool
          },
          %{
            __struct__: Protox.Field,
            json_name: "tripUpdate",
            kind: {:scalar, nil},
            label: :optional,
            name: :trip_update,
            tag: 3,
            type: {:message, TransitRealtime.TripUpdate}
          },
          %{
            __struct__: Protox.Field,
            json_name: "vehicle",
            kind: {:scalar, nil},
            label: :optional,
            name: :vehicle,
            tag: 4,
            type: {:message, TransitRealtime.VehiclePosition}
          },
          %{
            __struct__: Protox.Field,
            json_name: "alert",
            kind: {:scalar, nil},
            label: :optional,
            name: :alert,
            tag: 5,
            type: {:message, TransitRealtime.Alert}
          },
          %{
            __struct__: Protox.Field,
            json_name: "shape",
            kind: {:scalar, nil},
            label: :optional,
            name: :shape,
            tag: 6,
            type: {:message, TransitRealtime.Shape}
          },
          %{
            __struct__: Protox.Field,
            json_name: "stop",
            kind: {:scalar, nil},
            label: :optional,
            name: :stop,
            tag: 7,
            type: {:message, TransitRealtime.Stop}
          },
          %{
            __struct__: Protox.Field,
            json_name: "tripModifications",
            kind: {:scalar, nil},
            label: :optional,
            name: :trip_modifications,
            tag: 8,
            type: {:message, TransitRealtime.TripModifications}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "id",
               kind: {:scalar, ""},
               label: :required,
               name: :id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "id",
               kind: {:scalar, ""},
               label: :required,
               name: :id,
               tag: 1,
               type: :string
             }}
          end

          []
        ),
        (
          def field_def(:is_deleted) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "isDeleted",
               kind: {:scalar, false},
               label: :optional,
               name: :is_deleted,
               tag: 2,
               type: :bool
             }}
          end

          def field_def("isDeleted") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "isDeleted",
               kind: {:scalar, false},
               label: :optional,
               name: :is_deleted,
               tag: 2,
               type: :bool
             }}
          end

          def field_def("is_deleted") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "isDeleted",
               kind: {:scalar, false},
               label: :optional,
               name: :is_deleted,
               tag: 2,
               type: :bool
             }}
          end
        ),
        (
          def field_def(:trip_update) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripUpdate",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip_update,
               tag: 3,
               type: {:message, TransitRealtime.TripUpdate}
             }}
          end

          def field_def("tripUpdate") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripUpdate",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip_update,
               tag: 3,
               type: {:message, TransitRealtime.TripUpdate}
             }}
          end

          def field_def("trip_update") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripUpdate",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip_update,
               tag: 3,
               type: {:message, TransitRealtime.TripUpdate}
             }}
          end
        ),
        (
          def field_def(:vehicle) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "vehicle",
               kind: {:scalar, nil},
               label: :optional,
               name: :vehicle,
               tag: 4,
               type: {:message, TransitRealtime.VehiclePosition}
             }}
          end

          def field_def("vehicle") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "vehicle",
               kind: {:scalar, nil},
               label: :optional,
               name: :vehicle,
               tag: 4,
               type: {:message, TransitRealtime.VehiclePosition}
             }}
          end

          []
        ),
        (
          def field_def(:alert) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "alert",
               kind: {:scalar, nil},
               label: :optional,
               name: :alert,
               tag: 5,
               type: {:message, TransitRealtime.Alert}
             }}
          end

          def field_def("alert") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "alert",
               kind: {:scalar, nil},
               label: :optional,
               name: :alert,
               tag: 5,
               type: {:message, TransitRealtime.Alert}
             }}
          end

          []
        ),
        (
          def field_def(:shape) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "shape",
               kind: {:scalar, nil},
               label: :optional,
               name: :shape,
               tag: 6,
               type: {:message, TransitRealtime.Shape}
             }}
          end

          def field_def("shape") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "shape",
               kind: {:scalar, nil},
               label: :optional,
               name: :shape,
               tag: 6,
               type: {:message, TransitRealtime.Shape}
             }}
          end

          []
        ),
        (
          def field_def(:stop) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stop",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop,
               tag: 7,
               type: {:message, TransitRealtime.Stop}
             }}
          end

          def field_def("stop") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stop",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop,
               tag: 7,
               type: {:message, TransitRealtime.Stop}
             }}
          end

          []
        ),
        (
          def field_def(:trip_modifications) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripModifications",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip_modifications,
               tag: 8,
               type: {:message, TransitRealtime.TripModifications}
             }}
          end

          def field_def("tripModifications") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripModifications",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip_modifications,
               tag: 8,
               type: {:message, TransitRealtime.TripModifications}
             }}
          end

          def field_def("trip_modifications") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripModifications",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip_modifications,
               tag: 8,
               type: {:message, TransitRealtime.TripModifications}
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: [:id]
      def required_fields() do
        [:id]
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:id) do
        {:ok, ""}
      end,
      def default(:is_deleted) do
        {:ok, false}
      end,
      def default(:trip_update) do
        {:ok, nil}
      end,
      def default(:vehicle) do
        {:ok, nil}
      end,
      def default(:alert) do
        {:ok, nil}
      end,
      def default(:shape) do
        {:ok, nil}
      end,
      def default(:stop) do
        {:ok, nil}
      end,
      def default(:trip_modifications) do
        {:ok, nil}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.FeedHeader do
    @moduledoc false
    defstruct gtfs_realtime_version: nil,
              incrementality: nil,
              timestamp: nil,
              feed_version: nil,
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_gtfs_realtime_version(msg)
          |> encode_incrementality(msg)
          |> encode_timestamp(msg)
          |> encode_feed_version(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_gtfs_realtime_version(acc, msg) do
          try do
            case msg.gtfs_realtime_version do
              nil -> raise Protox.RequiredFieldsError.new([:gtfs_realtime_version])
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.gtfs_realtime_version)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:gtfs_realtime_version, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_incrementality(acc, msg) do
          try do
            case msg.incrementality do
              nil ->
                acc

              _ ->
                [
                  acc,
                  "\x10",
                  msg.incrementality
                  |> TransitRealtime.FeedHeader.Incrementality.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:incrementality, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_timestamp(acc, msg) do
          try do
            case msg.timestamp do
              nil -> acc
              _ -> [acc, "\x18", Protox.Encode.encode_uint64(msg.timestamp)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:timestamp, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_feed_version(acc, msg) do
          try do
            case msg.feed_version do
              nil -> acc
              _ -> [acc, "\"", Protox.Encode.encode_string(msg.feed_version)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:feed_version, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            {msg, set_fields} = parse_key_value([], bytes, struct(TransitRealtime.FeedHeader))

            case [:gtfs_realtime_version] -- set_fields do
              [] -> msg
              missing_fields -> raise Protox.RequiredFieldsError.new(missing_fields)
            end
          end
        )
      )

      (
        @spec parse_key_value([atom], binary, struct) :: {struct, [atom]}
        defp parse_key_value(set_fields, <<>>, msg) do
          {msg, set_fields}
        end

        defp parse_key_value(set_fields, bytes, msg) do
          {new_set_fields, field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:gtfs_realtime_version | set_fields],
                 [gtfs_realtime_version: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {value, rest} =
                  Protox.Decode.parse_enum(bytes, TransitRealtime.FeedHeader.Incrementality)

                {[:incrementality | set_fields], [incrementality: value], rest}

              {3, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint64(bytes)
                {[:timestamp | set_fields], [timestamp: value], rest}

              {4, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:feed_version | set_fields],
                 [feed_version: Protox.Decode.validate_string!(delimited)], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {set_fields,
                 [
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(new_set_fields, rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.FeedHeader,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:gtfs_realtime_version, {:scalar, ""}, :string},
          2 =>
            {:incrementality, {:scalar, :FULL_DATASET},
             {:enum, TransitRealtime.FeedHeader.Incrementality}},
          3 => {:timestamp, {:scalar, 0}, :uint64},
          4 => {:feed_version, {:scalar, ""}, :string}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          feed_version: {4, {:scalar, ""}, :string},
          gtfs_realtime_version: {1, {:scalar, ""}, :string},
          incrementality:
            {2, {:scalar, :FULL_DATASET}, {:enum, TransitRealtime.FeedHeader.Incrementality}},
          timestamp: {3, {:scalar, 0}, :uint64}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "gtfsRealtimeVersion",
            kind: {:scalar, ""},
            label: :required,
            name: :gtfs_realtime_version,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "incrementality",
            kind: {:scalar, :FULL_DATASET},
            label: :optional,
            name: :incrementality,
            tag: 2,
            type: {:enum, TransitRealtime.FeedHeader.Incrementality}
          },
          %{
            __struct__: Protox.Field,
            json_name: "timestamp",
            kind: {:scalar, 0},
            label: :optional,
            name: :timestamp,
            tag: 3,
            type: :uint64
          },
          %{
            __struct__: Protox.Field,
            json_name: "feedVersion",
            kind: {:scalar, ""},
            label: :optional,
            name: :feed_version,
            tag: 4,
            type: :string
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:gtfs_realtime_version) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "gtfsRealtimeVersion",
               kind: {:scalar, ""},
               label: :required,
               name: :gtfs_realtime_version,
               tag: 1,
               type: :string
             }}
          end

          def field_def("gtfsRealtimeVersion") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "gtfsRealtimeVersion",
               kind: {:scalar, ""},
               label: :required,
               name: :gtfs_realtime_version,
               tag: 1,
               type: :string
             }}
          end

          def field_def("gtfs_realtime_version") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "gtfsRealtimeVersion",
               kind: {:scalar, ""},
               label: :required,
               name: :gtfs_realtime_version,
               tag: 1,
               type: :string
             }}
          end
        ),
        (
          def field_def(:incrementality) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "incrementality",
               kind: {:scalar, :FULL_DATASET},
               label: :optional,
               name: :incrementality,
               tag: 2,
               type: {:enum, TransitRealtime.FeedHeader.Incrementality}
             }}
          end

          def field_def("incrementality") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "incrementality",
               kind: {:scalar, :FULL_DATASET},
               label: :optional,
               name: :incrementality,
               tag: 2,
               type: {:enum, TransitRealtime.FeedHeader.Incrementality}
             }}
          end

          []
        ),
        (
          def field_def(:timestamp) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "timestamp",
               kind: {:scalar, 0},
               label: :optional,
               name: :timestamp,
               tag: 3,
               type: :uint64
             }}
          end

          def field_def("timestamp") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "timestamp",
               kind: {:scalar, 0},
               label: :optional,
               name: :timestamp,
               tag: 3,
               type: :uint64
             }}
          end

          []
        ),
        (
          def field_def(:feed_version) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "feedVersion",
               kind: {:scalar, ""},
               label: :optional,
               name: :feed_version,
               tag: 4,
               type: :string
             }}
          end

          def field_def("feedVersion") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "feedVersion",
               kind: {:scalar, ""},
               label: :optional,
               name: :feed_version,
               tag: 4,
               type: :string
             }}
          end

          def field_def("feed_version") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "feedVersion",
               kind: {:scalar, ""},
               label: :optional,
               name: :feed_version,
               tag: 4,
               type: :string
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: [:gtfs_realtime_version]
      def required_fields() do
        [:gtfs_realtime_version]
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:gtfs_realtime_version) do
        {:ok, ""}
      end,
      def default(:incrementality) do
        {:ok, :FULL_DATASET}
      end,
      def default(:timestamp) do
        {:ok, 0}
      end,
      def default(:feed_version) do
        {:ok, ""}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.FeedMessage do
    @moduledoc false
    defstruct header: nil, entity: [], __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          [] |> encode_header(msg) |> encode_entity(msg) |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_header(acc, msg) do
          try do
            case msg.header do
              nil -> raise Protox.RequiredFieldsError.new([:header])
              _ -> [acc, "\n", Protox.Encode.encode_message(msg.header)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:header, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_entity(acc, msg) do
          try do
            case msg.entity do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "\x12", Protox.Encode.encode_message(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:entity, "invalid field value"), __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            {msg, set_fields} = parse_key_value([], bytes, struct(TransitRealtime.FeedMessage))

            case [:header] -- set_fields do
              [] -> msg
              missing_fields -> raise Protox.RequiredFieldsError.new(missing_fields)
            end
          end
        )
      )

      (
        @spec parse_key_value([atom], binary, struct) :: {struct, [atom]}
        defp parse_key_value(set_fields, <<>>, msg) do
          {msg, set_fields}
        end

        defp parse_key_value(set_fields, bytes, msg) do
          {new_set_fields, field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:header | set_fields],
                 [
                   header:
                     Protox.MergeMessage.merge(
                       msg.header,
                       TransitRealtime.FeedHeader.decode!(delimited)
                     )
                 ], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:entity | set_fields],
                 [entity: msg.entity ++ [TransitRealtime.FeedEntity.decode!(delimited)]], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {set_fields,
                 [
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(new_set_fields, rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.FeedMessage,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:header, {:scalar, nil}, {:message, TransitRealtime.FeedHeader}},
          2 => {:entity, :unpacked, {:message, TransitRealtime.FeedEntity}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          entity: {2, :unpacked, {:message, TransitRealtime.FeedEntity}},
          header: {1, {:scalar, nil}, {:message, TransitRealtime.FeedHeader}}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "header",
            kind: {:scalar, nil},
            label: :required,
            name: :header,
            tag: 1,
            type: {:message, TransitRealtime.FeedHeader}
          },
          %{
            __struct__: Protox.Field,
            json_name: "entity",
            kind: :unpacked,
            label: :repeated,
            name: :entity,
            tag: 2,
            type: {:message, TransitRealtime.FeedEntity}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:header) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "header",
               kind: {:scalar, nil},
               label: :required,
               name: :header,
               tag: 1,
               type: {:message, TransitRealtime.FeedHeader}
             }}
          end

          def field_def("header") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "header",
               kind: {:scalar, nil},
               label: :required,
               name: :header,
               tag: 1,
               type: {:message, TransitRealtime.FeedHeader}
             }}
          end

          []
        ),
        (
          def field_def(:entity) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "entity",
               kind: :unpacked,
               label: :repeated,
               name: :entity,
               tag: 2,
               type: {:message, TransitRealtime.FeedEntity}
             }}
          end

          def field_def("entity") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "entity",
               kind: :unpacked,
               label: :repeated,
               name: :entity,
               tag: 2,
               type: {:message, TransitRealtime.FeedEntity}
             }}
          end

          []
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: [:header]
      def required_fields() do
        [:header]
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:header) do
        {:ok, nil}
      end,
      def default(:entity) do
        {:error, :no_default_value}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.Position do
    @moduledoc false
    defstruct latitude: nil, longitude: nil, bearing: nil, odometer: nil, speed: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_latitude(msg)
          |> encode_longitude(msg)
          |> encode_bearing(msg)
          |> encode_odometer(msg)
          |> encode_speed(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_latitude(acc, msg) do
          try do
            case msg.latitude do
              nil -> raise Protox.RequiredFieldsError.new([:latitude])
              _ -> [acc, "\r", Protox.Encode.encode_float(msg.latitude)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:latitude, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_longitude(acc, msg) do
          try do
            case msg.longitude do
              nil -> raise Protox.RequiredFieldsError.new([:longitude])
              _ -> [acc, "\x15", Protox.Encode.encode_float(msg.longitude)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:longitude, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_bearing(acc, msg) do
          try do
            case msg.bearing do
              nil -> acc
              _ -> [acc, "\x1D", Protox.Encode.encode_float(msg.bearing)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:bearing, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_odometer(acc, msg) do
          try do
            case msg.odometer do
              nil -> acc
              _ -> [acc, "!", Protox.Encode.encode_double(msg.odometer)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:odometer, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_speed(acc, msg) do
          try do
            case msg.speed do
              nil -> acc
              _ -> [acc, "-", Protox.Encode.encode_float(msg.speed)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:speed, "invalid field value"), __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            {msg, set_fields} = parse_key_value([], bytes, struct(TransitRealtime.Position))

            case [:latitude, :longitude] -- set_fields do
              [] -> msg
              missing_fields -> raise Protox.RequiredFieldsError.new(missing_fields)
            end
          end
        )
      )

      (
        @spec parse_key_value([atom], binary, struct) :: {struct, [atom]}
        defp parse_key_value(set_fields, <<>>, msg) do
          {msg, set_fields}
        end

        defp parse_key_value(set_fields, bytes, msg) do
          {new_set_fields, field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {value, rest} = Protox.Decode.parse_float(bytes)
                {[:latitude | set_fields], [latitude: value], rest}

              {2, _, bytes} ->
                {value, rest} = Protox.Decode.parse_float(bytes)
                {[:longitude | set_fields], [longitude: value], rest}

              {3, _, bytes} ->
                {value, rest} = Protox.Decode.parse_float(bytes)
                {[:bearing | set_fields], [bearing: value], rest}

              {4, _, bytes} ->
                {value, rest} = Protox.Decode.parse_double(bytes)
                {[:odometer | set_fields], [odometer: value], rest}

              {5, _, bytes} ->
                {value, rest} = Protox.Decode.parse_float(bytes)
                {[:speed | set_fields], [speed: value], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {set_fields,
                 [
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(new_set_fields, rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.Position,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:latitude, {:scalar, 0.0}, :float},
          2 => {:longitude, {:scalar, 0.0}, :float},
          3 => {:bearing, {:scalar, 0.0}, :float},
          4 => {:odometer, {:scalar, 0.0}, :double},
          5 => {:speed, {:scalar, 0.0}, :float}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          bearing: {3, {:scalar, 0.0}, :float},
          latitude: {1, {:scalar, 0.0}, :float},
          longitude: {2, {:scalar, 0.0}, :float},
          odometer: {4, {:scalar, 0.0}, :double},
          speed: {5, {:scalar, 0.0}, :float}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "latitude",
            kind: {:scalar, 0.0},
            label: :required,
            name: :latitude,
            tag: 1,
            type: :float
          },
          %{
            __struct__: Protox.Field,
            json_name: "longitude",
            kind: {:scalar, 0.0},
            label: :required,
            name: :longitude,
            tag: 2,
            type: :float
          },
          %{
            __struct__: Protox.Field,
            json_name: "bearing",
            kind: {:scalar, 0.0},
            label: :optional,
            name: :bearing,
            tag: 3,
            type: :float
          },
          %{
            __struct__: Protox.Field,
            json_name: "odometer",
            kind: {:scalar, 0.0},
            label: :optional,
            name: :odometer,
            tag: 4,
            type: :double
          },
          %{
            __struct__: Protox.Field,
            json_name: "speed",
            kind: {:scalar, 0.0},
            label: :optional,
            name: :speed,
            tag: 5,
            type: :float
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:latitude) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "latitude",
               kind: {:scalar, 0.0},
               label: :required,
               name: :latitude,
               tag: 1,
               type: :float
             }}
          end

          def field_def("latitude") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "latitude",
               kind: {:scalar, 0.0},
               label: :required,
               name: :latitude,
               tag: 1,
               type: :float
             }}
          end

          []
        ),
        (
          def field_def(:longitude) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "longitude",
               kind: {:scalar, 0.0},
               label: :required,
               name: :longitude,
               tag: 2,
               type: :float
             }}
          end

          def field_def("longitude") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "longitude",
               kind: {:scalar, 0.0},
               label: :required,
               name: :longitude,
               tag: 2,
               type: :float
             }}
          end

          []
        ),
        (
          def field_def(:bearing) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "bearing",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :bearing,
               tag: 3,
               type: :float
             }}
          end

          def field_def("bearing") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "bearing",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :bearing,
               tag: 3,
               type: :float
             }}
          end

          []
        ),
        (
          def field_def(:odometer) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "odometer",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :odometer,
               tag: 4,
               type: :double
             }}
          end

          def field_def("odometer") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "odometer",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :odometer,
               tag: 4,
               type: :double
             }}
          end

          []
        ),
        (
          def field_def(:speed) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "speed",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :speed,
               tag: 5,
               type: :float
             }}
          end

          def field_def("speed") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "speed",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :speed,
               tag: 5,
               type: :float
             }}
          end

          []
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: [:latitude | :longitude]
      def required_fields() do
        [:latitude, :longitude]
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:latitude) do
        {:ok, 0.0}
      end,
      def default(:longitude) do
        {:ok, 0.0}
      end,
      def default(:bearing) do
        {:ok, 0.0}
      end,
      def default(:odometer) do
        {:ok, 0.0}
      end,
      def default(:speed) do
        {:ok, 0.0}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.ReplacementStop do
    @moduledoc false
    defstruct travel_time_to_stop: nil, stop_id: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_travel_time_to_stop(msg)
          |> encode_stop_id(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_travel_time_to_stop(acc, msg) do
          try do
            case msg.travel_time_to_stop do
              nil -> acc
              _ -> [acc, "\b", Protox.Encode.encode_int32(msg.travel_time_to_stop)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:travel_time_to_stop, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_stop_id(acc, msg) do
          try do
            case msg.stop_id do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.stop_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_id, "invalid field value"), __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.ReplacementStop))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {value, rest} = Protox.Decode.parse_int32(bytes)
                {[travel_time_to_stop: value], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[stop_id: Protox.Decode.validate_string!(delimited)], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.ReplacementStop,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:travel_time_to_stop, {:scalar, 0}, :int32},
          2 => {:stop_id, {:scalar, ""}, :string}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{stop_id: {2, {:scalar, ""}, :string}, travel_time_to_stop: {1, {:scalar, 0}, :int32}}
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "travelTimeToStop",
            kind: {:scalar, 0},
            label: :optional,
            name: :travel_time_to_stop,
            tag: 1,
            type: :int32
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopId",
            kind: {:scalar, ""},
            label: :optional,
            name: :stop_id,
            tag: 2,
            type: :string
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:travel_time_to_stop) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "travelTimeToStop",
               kind: {:scalar, 0},
               label: :optional,
               name: :travel_time_to_stop,
               tag: 1,
               type: :int32
             }}
          end

          def field_def("travelTimeToStop") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "travelTimeToStop",
               kind: {:scalar, 0},
               label: :optional,
               name: :travel_time_to_stop,
               tag: 1,
               type: :int32
             }}
          end

          def field_def("travel_time_to_stop") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "travelTimeToStop",
               kind: {:scalar, 0},
               label: :optional,
               name: :travel_time_to_stop,
               tag: 1,
               type: :int32
             }}
          end
        ),
        (
          def field_def(:stop_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 2,
               type: :string
             }}
          end

          def field_def("stopId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 2,
               type: :string
             }}
          end

          def field_def("stop_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 2,
               type: :string
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:travel_time_to_stop) do
        {:ok, 0}
      end,
      def default(:stop_id) do
        {:ok, ""}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.Shape do
    @moduledoc false
    defstruct shape_id: nil, encoded_polyline: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          [] |> encode_shape_id(msg) |> encode_encoded_polyline(msg) |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_shape_id(acc, msg) do
          try do
            case msg.shape_id do
              nil -> acc
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.shape_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:shape_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_encoded_polyline(acc, msg) do
          try do
            case msg.encoded_polyline do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.encoded_polyline)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:encoded_polyline, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.Shape))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[shape_id: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[encoded_polyline: Protox.Decode.validate_string!(delimited)], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.Shape,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:shape_id, {:scalar, ""}, :string},
          2 => {:encoded_polyline, {:scalar, ""}, :string}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{encoded_polyline: {2, {:scalar, ""}, :string}, shape_id: {1, {:scalar, ""}, :string}}
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "shapeId",
            kind: {:scalar, ""},
            label: :optional,
            name: :shape_id,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "encodedPolyline",
            kind: {:scalar, ""},
            label: :optional,
            name: :encoded_polyline,
            tag: 2,
            type: :string
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:shape_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "shapeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :shape_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("shapeId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "shapeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :shape_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("shape_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "shapeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :shape_id,
               tag: 1,
               type: :string
             }}
          end
        ),
        (
          def field_def(:encoded_polyline) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "encodedPolyline",
               kind: {:scalar, ""},
               label: :optional,
               name: :encoded_polyline,
               tag: 2,
               type: :string
             }}
          end

          def field_def("encodedPolyline") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "encodedPolyline",
               kind: {:scalar, ""},
               label: :optional,
               name: :encoded_polyline,
               tag: 2,
               type: :string
             }}
          end

          def field_def("encoded_polyline") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "encodedPolyline",
               kind: {:scalar, ""},
               label: :optional,
               name: :encoded_polyline,
               tag: 2,
               type: :string
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:shape_id) do
        {:ok, ""}
      end,
      def default(:encoded_polyline) do
        {:ok, ""}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.Stop do
    @moduledoc false
    defstruct stop_id: nil,
              stop_code: nil,
              stop_name: nil,
              tts_stop_name: nil,
              stop_desc: nil,
              stop_lat: nil,
              stop_lon: nil,
              zone_id: nil,
              stop_url: nil,
              parent_station: nil,
              stop_timezone: nil,
              wheelchair_boarding: nil,
              level_id: nil,
              platform_code: nil,
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_stop_id(msg)
          |> encode_stop_code(msg)
          |> encode_stop_name(msg)
          |> encode_tts_stop_name(msg)
          |> encode_stop_desc(msg)
          |> encode_stop_lat(msg)
          |> encode_stop_lon(msg)
          |> encode_zone_id(msg)
          |> encode_stop_url(msg)
          |> encode_parent_station(msg)
          |> encode_stop_timezone(msg)
          |> encode_wheelchair_boarding(msg)
          |> encode_level_id(msg)
          |> encode_platform_code(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_stop_id(acc, msg) do
          try do
            case msg.stop_id do
              nil -> acc
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.stop_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_stop_code(acc, msg) do
          try do
            case msg.stop_code do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_message(msg.stop_code)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_code, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_stop_name(acc, msg) do
          try do
            case msg.stop_name do
              nil -> acc
              _ -> [acc, "\x1A", Protox.Encode.encode_message(msg.stop_name)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_name, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_tts_stop_name(acc, msg) do
          try do
            case msg.tts_stop_name do
              nil -> acc
              _ -> [acc, "\"", Protox.Encode.encode_message(msg.tts_stop_name)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:tts_stop_name, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_stop_desc(acc, msg) do
          try do
            case msg.stop_desc do
              nil -> acc
              _ -> [acc, "*", Protox.Encode.encode_message(msg.stop_desc)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_desc, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_stop_lat(acc, msg) do
          try do
            case msg.stop_lat do
              nil -> acc
              _ -> [acc, "5", Protox.Encode.encode_float(msg.stop_lat)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_lat, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_stop_lon(acc, msg) do
          try do
            case msg.stop_lon do
              nil -> acc
              _ -> [acc, "=", Protox.Encode.encode_float(msg.stop_lon)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_lon, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_zone_id(acc, msg) do
          try do
            case msg.zone_id do
              nil -> acc
              _ -> [acc, "B", Protox.Encode.encode_string(msg.zone_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:zone_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_stop_url(acc, msg) do
          try do
            case msg.stop_url do
              nil -> acc
              _ -> [acc, "J", Protox.Encode.encode_message(msg.stop_url)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_url, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_parent_station(acc, msg) do
          try do
            case msg.parent_station do
              nil -> acc
              _ -> [acc, "Z", Protox.Encode.encode_string(msg.parent_station)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:parent_station, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_stop_timezone(acc, msg) do
          try do
            case msg.stop_timezone do
              nil -> acc
              _ -> [acc, "b", Protox.Encode.encode_string(msg.stop_timezone)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_timezone, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_wheelchair_boarding(acc, msg) do
          try do
            case msg.wheelchair_boarding do
              nil ->
                acc

              _ ->
                [
                  acc,
                  "h",
                  msg.wheelchair_boarding
                  |> TransitRealtime.Stop.WheelchairBoarding.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:wheelchair_boarding, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_level_id(acc, msg) do
          try do
            case msg.level_id do
              nil -> acc
              _ -> [acc, "r", Protox.Encode.encode_string(msg.level_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:level_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_platform_code(acc, msg) do
          try do
            case msg.platform_code do
              nil -> acc
              _ -> [acc, "z", Protox.Encode.encode_message(msg.platform_code)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:platform_code, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.Stop))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[stop_id: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   stop_code:
                     Protox.MergeMessage.merge(
                       msg.stop_code,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {3, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   stop_name:
                     Protox.MergeMessage.merge(
                       msg.stop_name,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {4, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   tts_stop_name:
                     Protox.MergeMessage.merge(
                       msg.tts_stop_name,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {5, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   stop_desc:
                     Protox.MergeMessage.merge(
                       msg.stop_desc,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {6, _, bytes} ->
                {value, rest} = Protox.Decode.parse_float(bytes)
                {[stop_lat: value], rest}

              {7, _, bytes} ->
                {value, rest} = Protox.Decode.parse_float(bytes)
                {[stop_lon: value], rest}

              {8, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[zone_id: Protox.Decode.validate_string!(delimited)], rest}

              {9, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   stop_url:
                     Protox.MergeMessage.merge(
                       msg.stop_url,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {11, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[parent_station: Protox.Decode.validate_string!(delimited)], rest}

              {12, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[stop_timezone: Protox.Decode.validate_string!(delimited)], rest}

              {13, _, bytes} ->
                {value, rest} =
                  Protox.Decode.parse_enum(bytes, TransitRealtime.Stop.WheelchairBoarding)

                {[wheelchair_boarding: value], rest}

              {14, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[level_id: Protox.Decode.validate_string!(delimited)], rest}

              {15, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   platform_code:
                     Protox.MergeMessage.merge(
                       msg.platform_code,
                       TransitRealtime.TranslatedString.decode!(delimited)
                     )
                 ], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.Stop,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:stop_id, {:scalar, ""}, :string},
          2 => {:stop_code, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          3 => {:stop_name, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          4 => {:tts_stop_name, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          5 => {:stop_desc, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          6 => {:stop_lat, {:scalar, 0.0}, :float},
          7 => {:stop_lon, {:scalar, 0.0}, :float},
          8 => {:zone_id, {:scalar, ""}, :string},
          9 => {:stop_url, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          11 => {:parent_station, {:scalar, ""}, :string},
          12 => {:stop_timezone, {:scalar, ""}, :string},
          13 =>
            {:wheelchair_boarding, {:scalar, :UNKNOWN},
             {:enum, TransitRealtime.Stop.WheelchairBoarding}},
          14 => {:level_id, {:scalar, ""}, :string},
          15 => {:platform_code, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          level_id: {14, {:scalar, ""}, :string},
          parent_station: {11, {:scalar, ""}, :string},
          platform_code: {15, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          stop_code: {2, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          stop_desc: {5, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          stop_id: {1, {:scalar, ""}, :string},
          stop_lat: {6, {:scalar, 0.0}, :float},
          stop_lon: {7, {:scalar, 0.0}, :float},
          stop_name: {3, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          stop_timezone: {12, {:scalar, ""}, :string},
          stop_url: {9, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          tts_stop_name: {4, {:scalar, nil}, {:message, TransitRealtime.TranslatedString}},
          wheelchair_boarding:
            {13, {:scalar, :UNKNOWN}, {:enum, TransitRealtime.Stop.WheelchairBoarding}},
          zone_id: {8, {:scalar, ""}, :string}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "stopId",
            kind: {:scalar, ""},
            label: :optional,
            name: :stop_id,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopCode",
            kind: {:scalar, nil},
            label: :optional,
            name: :stop_code,
            tag: 2,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopName",
            kind: {:scalar, nil},
            label: :optional,
            name: :stop_name,
            tag: 3,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "ttsStopName",
            kind: {:scalar, nil},
            label: :optional,
            name: :tts_stop_name,
            tag: 4,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopDesc",
            kind: {:scalar, nil},
            label: :optional,
            name: :stop_desc,
            tag: 5,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopLat",
            kind: {:scalar, 0.0},
            label: :optional,
            name: :stop_lat,
            tag: 6,
            type: :float
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopLon",
            kind: {:scalar, 0.0},
            label: :optional,
            name: :stop_lon,
            tag: 7,
            type: :float
          },
          %{
            __struct__: Protox.Field,
            json_name: "zoneId",
            kind: {:scalar, ""},
            label: :optional,
            name: :zone_id,
            tag: 8,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopUrl",
            kind: {:scalar, nil},
            label: :optional,
            name: :stop_url,
            tag: 9,
            type: {:message, TransitRealtime.TranslatedString}
          },
          %{
            __struct__: Protox.Field,
            json_name: "parentStation",
            kind: {:scalar, ""},
            label: :optional,
            name: :parent_station,
            tag: 11,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopTimezone",
            kind: {:scalar, ""},
            label: :optional,
            name: :stop_timezone,
            tag: 12,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "wheelchairBoarding",
            kind: {:scalar, :UNKNOWN},
            label: :optional,
            name: :wheelchair_boarding,
            tag: 13,
            type: {:enum, TransitRealtime.Stop.WheelchairBoarding}
          },
          %{
            __struct__: Protox.Field,
            json_name: "levelId",
            kind: {:scalar, ""},
            label: :optional,
            name: :level_id,
            tag: 14,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "platformCode",
            kind: {:scalar, nil},
            label: :optional,
            name: :platform_code,
            tag: 15,
            type: {:message, TransitRealtime.TranslatedString}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:stop_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("stopId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("stop_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 1,
               type: :string
             }}
          end
        ),
        (
          def field_def(:stop_code) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopCode",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_code,
               tag: 2,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("stopCode") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopCode",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_code,
               tag: 2,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("stop_code") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopCode",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_code,
               tag: 2,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        (
          def field_def(:stop_name) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopName",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_name,
               tag: 3,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("stopName") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopName",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_name,
               tag: 3,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("stop_name") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopName",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_name,
               tag: 3,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        (
          def field_def(:tts_stop_name) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "ttsStopName",
               kind: {:scalar, nil},
               label: :optional,
               name: :tts_stop_name,
               tag: 4,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("ttsStopName") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "ttsStopName",
               kind: {:scalar, nil},
               label: :optional,
               name: :tts_stop_name,
               tag: 4,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("tts_stop_name") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "ttsStopName",
               kind: {:scalar, nil},
               label: :optional,
               name: :tts_stop_name,
               tag: 4,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        (
          def field_def(:stop_desc) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopDesc",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_desc,
               tag: 5,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("stopDesc") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopDesc",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_desc,
               tag: 5,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("stop_desc") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopDesc",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_desc,
               tag: 5,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        (
          def field_def(:stop_lat) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopLat",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :stop_lat,
               tag: 6,
               type: :float
             }}
          end

          def field_def("stopLat") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopLat",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :stop_lat,
               tag: 6,
               type: :float
             }}
          end

          def field_def("stop_lat") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopLat",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :stop_lat,
               tag: 6,
               type: :float
             }}
          end
        ),
        (
          def field_def(:stop_lon) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopLon",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :stop_lon,
               tag: 7,
               type: :float
             }}
          end

          def field_def("stopLon") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopLon",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :stop_lon,
               tag: 7,
               type: :float
             }}
          end

          def field_def("stop_lon") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopLon",
               kind: {:scalar, 0.0},
               label: :optional,
               name: :stop_lon,
               tag: 7,
               type: :float
             }}
          end
        ),
        (
          def field_def(:zone_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "zoneId",
               kind: {:scalar, ""},
               label: :optional,
               name: :zone_id,
               tag: 8,
               type: :string
             }}
          end

          def field_def("zoneId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "zoneId",
               kind: {:scalar, ""},
               label: :optional,
               name: :zone_id,
               tag: 8,
               type: :string
             }}
          end

          def field_def("zone_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "zoneId",
               kind: {:scalar, ""},
               label: :optional,
               name: :zone_id,
               tag: 8,
               type: :string
             }}
          end
        ),
        (
          def field_def(:stop_url) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopUrl",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_url,
               tag: 9,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("stopUrl") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopUrl",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_url,
               tag: 9,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("stop_url") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopUrl",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_url,
               tag: 9,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        (
          def field_def(:parent_station) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "parentStation",
               kind: {:scalar, ""},
               label: :optional,
               name: :parent_station,
               tag: 11,
               type: :string
             }}
          end

          def field_def("parentStation") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "parentStation",
               kind: {:scalar, ""},
               label: :optional,
               name: :parent_station,
               tag: 11,
               type: :string
             }}
          end

          def field_def("parent_station") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "parentStation",
               kind: {:scalar, ""},
               label: :optional,
               name: :parent_station,
               tag: 11,
               type: :string
             }}
          end
        ),
        (
          def field_def(:stop_timezone) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopTimezone",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_timezone,
               tag: 12,
               type: :string
             }}
          end

          def field_def("stopTimezone") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopTimezone",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_timezone,
               tag: 12,
               type: :string
             }}
          end

          def field_def("stop_timezone") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopTimezone",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_timezone,
               tag: 12,
               type: :string
             }}
          end
        ),
        (
          def field_def(:wheelchair_boarding) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "wheelchairBoarding",
               kind: {:scalar, :UNKNOWN},
               label: :optional,
               name: :wheelchair_boarding,
               tag: 13,
               type: {:enum, TransitRealtime.Stop.WheelchairBoarding}
             }}
          end

          def field_def("wheelchairBoarding") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "wheelchairBoarding",
               kind: {:scalar, :UNKNOWN},
               label: :optional,
               name: :wheelchair_boarding,
               tag: 13,
               type: {:enum, TransitRealtime.Stop.WheelchairBoarding}
             }}
          end

          def field_def("wheelchair_boarding") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "wheelchairBoarding",
               kind: {:scalar, :UNKNOWN},
               label: :optional,
               name: :wheelchair_boarding,
               tag: 13,
               type: {:enum, TransitRealtime.Stop.WheelchairBoarding}
             }}
          end
        ),
        (
          def field_def(:level_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "levelId",
               kind: {:scalar, ""},
               label: :optional,
               name: :level_id,
               tag: 14,
               type: :string
             }}
          end

          def field_def("levelId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "levelId",
               kind: {:scalar, ""},
               label: :optional,
               name: :level_id,
               tag: 14,
               type: :string
             }}
          end

          def field_def("level_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "levelId",
               kind: {:scalar, ""},
               label: :optional,
               name: :level_id,
               tag: 14,
               type: :string
             }}
          end
        ),
        (
          def field_def(:platform_code) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "platformCode",
               kind: {:scalar, nil},
               label: :optional,
               name: :platform_code,
               tag: 15,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("platformCode") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "platformCode",
               kind: {:scalar, nil},
               label: :optional,
               name: :platform_code,
               tag: 15,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end

          def field_def("platform_code") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "platformCode",
               kind: {:scalar, nil},
               label: :optional,
               name: :platform_code,
               tag: 15,
               type: {:message, TransitRealtime.TranslatedString}
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:stop_id) do
        {:ok, ""}
      end,
      def default(:stop_code) do
        {:ok, nil}
      end,
      def default(:stop_name) do
        {:ok, nil}
      end,
      def default(:tts_stop_name) do
        {:ok, nil}
      end,
      def default(:stop_desc) do
        {:ok, nil}
      end,
      def default(:stop_lat) do
        {:ok, 0.0}
      end,
      def default(:stop_lon) do
        {:ok, 0.0}
      end,
      def default(:zone_id) do
        {:ok, ""}
      end,
      def default(:stop_url) do
        {:ok, nil}
      end,
      def default(:parent_station) do
        {:ok, ""}
      end,
      def default(:stop_timezone) do
        {:ok, ""}
      end,
      def default(:wheelchair_boarding) do
        {:ok, :UNKNOWN}
      end,
      def default(:level_id) do
        {:ok, ""}
      end,
      def default(:platform_code) do
        {:ok, nil}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.StopSelector do
    @moduledoc false
    defstruct stop_sequence: nil, stop_id: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          [] |> encode_stop_sequence(msg) |> encode_stop_id(msg) |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_stop_sequence(acc, msg) do
          try do
            case msg.stop_sequence do
              nil -> acc
              _ -> [acc, "\b", Protox.Encode.encode_uint32(msg.stop_sequence)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_sequence, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_stop_id(acc, msg) do
          try do
            case msg.stop_id do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.stop_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_id, "invalid field value"), __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.StopSelector))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint32(bytes)
                {[stop_sequence: value], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[stop_id: Protox.Decode.validate_string!(delimited)], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.StopSelector,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{1 => {:stop_sequence, {:scalar, 0}, :uint32}, 2 => {:stop_id, {:scalar, ""}, :string}}
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{stop_id: {2, {:scalar, ""}, :string}, stop_sequence: {1, {:scalar, 0}, :uint32}}
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "stopSequence",
            kind: {:scalar, 0},
            label: :optional,
            name: :stop_sequence,
            tag: 1,
            type: :uint32
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopId",
            kind: {:scalar, ""},
            label: :optional,
            name: :stop_id,
            tag: 2,
            type: :string
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:stop_sequence) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :stop_sequence,
               tag: 1,
               type: :uint32
             }}
          end

          def field_def("stopSequence") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :stop_sequence,
               tag: 1,
               type: :uint32
             }}
          end

          def field_def("stop_sequence") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :stop_sequence,
               tag: 1,
               type: :uint32
             }}
          end
        ),
        (
          def field_def(:stop_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 2,
               type: :string
             }}
          end

          def field_def("stopId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 2,
               type: :string
             }}
          end

          def field_def("stop_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 2,
               type: :string
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:stop_sequence) do
        {:ok, 0}
      end,
      def default(:stop_id) do
        {:ok, ""}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TimeRange do
    @moduledoc false
    defstruct start: nil, end: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          [] |> encode_start(msg) |> encode_end(msg) |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_start(acc, msg) do
          try do
            case msg.start do
              nil -> acc
              _ -> [acc, "\b", Protox.Encode.encode_uint64(msg.start)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:start, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_end(acc, msg) do
          try do
            case msg.end do
              nil -> acc
              _ -> [acc, "\x10", Protox.Encode.encode_uint64(msg.end)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:end, "invalid field value"), __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.TimeRange))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint64(bytes)
                {[start: value], rest}

              {2, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint64(bytes)
                {[end: value], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TimeRange,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{1 => {:start, {:scalar, 0}, :uint64}, 2 => {:end, {:scalar, 0}, :uint64}}
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{end: {2, {:scalar, 0}, :uint64}, start: {1, {:scalar, 0}, :uint64}}
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "start",
            kind: {:scalar, 0},
            label: :optional,
            name: :start,
            tag: 1,
            type: :uint64
          },
          %{
            __struct__: Protox.Field,
            json_name: "end",
            kind: {:scalar, 0},
            label: :optional,
            name: :end,
            tag: 2,
            type: :uint64
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:start) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "start",
               kind: {:scalar, 0},
               label: :optional,
               name: :start,
               tag: 1,
               type: :uint64
             }}
          end

          def field_def("start") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "start",
               kind: {:scalar, 0},
               label: :optional,
               name: :start,
               tag: 1,
               type: :uint64
             }}
          end

          []
        ),
        (
          def field_def(:end) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "end",
               kind: {:scalar, 0},
               label: :optional,
               name: :end,
               tag: 2,
               type: :uint64
             }}
          end

          def field_def("end") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "end",
               kind: {:scalar, 0},
               label: :optional,
               name: :end,
               tag: 2,
               type: :uint64
             }}
          end

          []
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:start) do
        {:ok, 0}
      end,
      def default(:end) do
        {:ok, 0}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TranslatedImage do
    @moduledoc false
    defstruct localized_image: [], __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          [] |> encode_localized_image(msg) |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_localized_image(acc, msg) do
          try do
            case msg.localized_image do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "\n", Protox.Encode.encode_message(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:localized_image, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.TranslatedImage))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   localized_image:
                     msg.localized_image ++
                       [TransitRealtime.TranslatedImage.LocalizedImage.decode!(delimited)]
                 ], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TranslatedImage,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 =>
            {:localized_image, :unpacked,
             {:message, TransitRealtime.TranslatedImage.LocalizedImage}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          localized_image:
            {1, :unpacked, {:message, TransitRealtime.TranslatedImage.LocalizedImage}}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "localizedImage",
            kind: :unpacked,
            label: :repeated,
            name: :localized_image,
            tag: 1,
            type: {:message, TransitRealtime.TranslatedImage.LocalizedImage}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:localized_image) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "localizedImage",
               kind: :unpacked,
               label: :repeated,
               name: :localized_image,
               tag: 1,
               type: {:message, TransitRealtime.TranslatedImage.LocalizedImage}
             }}
          end

          def field_def("localizedImage") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "localizedImage",
               kind: :unpacked,
               label: :repeated,
               name: :localized_image,
               tag: 1,
               type: {:message, TransitRealtime.TranslatedImage.LocalizedImage}
             }}
          end

          def field_def("localized_image") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "localizedImage",
               kind: :unpacked,
               label: :repeated,
               name: :localized_image,
               tag: 1,
               type: {:message, TransitRealtime.TranslatedImage.LocalizedImage}
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:localized_image) do
        {:error, :no_default_value}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TranslatedImage.LocalizedImage do
    @moduledoc false
    defstruct url: nil, media_type: nil, language: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_url(msg)
          |> encode_media_type(msg)
          |> encode_language(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_url(acc, msg) do
          try do
            case msg.url do
              nil -> raise Protox.RequiredFieldsError.new([:url])
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.url)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:url, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_media_type(acc, msg) do
          try do
            case msg.media_type do
              nil -> raise Protox.RequiredFieldsError.new([:media_type])
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.media_type)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:media_type, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_language(acc, msg) do
          try do
            case msg.language do
              nil -> acc
              _ -> [acc, "\x1A", Protox.Encode.encode_string(msg.language)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:language, "invalid field value"), __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            {msg, set_fields} =
              parse_key_value([], bytes, struct(TransitRealtime.TranslatedImage.LocalizedImage))

            case [:url, :media_type] -- set_fields do
              [] -> msg
              missing_fields -> raise Protox.RequiredFieldsError.new(missing_fields)
            end
          end
        )
      )

      (
        @spec parse_key_value([atom], binary, struct) :: {struct, [atom]}
        defp parse_key_value(set_fields, <<>>, msg) do
          {msg, set_fields}
        end

        defp parse_key_value(set_fields, bytes, msg) do
          {new_set_fields, field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[:url | set_fields], [url: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:media_type | set_fields],
                 [media_type: Protox.Decode.validate_string!(delimited)], rest}

              {3, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:language | set_fields], [language: Protox.Decode.validate_string!(delimited)],
                 rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {set_fields,
                 [
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(new_set_fields, rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TranslatedImage.LocalizedImage,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:url, {:scalar, ""}, :string},
          2 => {:media_type, {:scalar, ""}, :string},
          3 => {:language, {:scalar, ""}, :string}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          language: {3, {:scalar, ""}, :string},
          media_type: {2, {:scalar, ""}, :string},
          url: {1, {:scalar, ""}, :string}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "url",
            kind: {:scalar, ""},
            label: :required,
            name: :url,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "mediaType",
            kind: {:scalar, ""},
            label: :required,
            name: :media_type,
            tag: 2,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "language",
            kind: {:scalar, ""},
            label: :optional,
            name: :language,
            tag: 3,
            type: :string
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:url) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "url",
               kind: {:scalar, ""},
               label: :required,
               name: :url,
               tag: 1,
               type: :string
             }}
          end

          def field_def("url") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "url",
               kind: {:scalar, ""},
               label: :required,
               name: :url,
               tag: 1,
               type: :string
             }}
          end

          []
        ),
        (
          def field_def(:media_type) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "mediaType",
               kind: {:scalar, ""},
               label: :required,
               name: :media_type,
               tag: 2,
               type: :string
             }}
          end

          def field_def("mediaType") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "mediaType",
               kind: {:scalar, ""},
               label: :required,
               name: :media_type,
               tag: 2,
               type: :string
             }}
          end

          def field_def("media_type") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "mediaType",
               kind: {:scalar, ""},
               label: :required,
               name: :media_type,
               tag: 2,
               type: :string
             }}
          end
        ),
        (
          def field_def(:language) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "language",
               kind: {:scalar, ""},
               label: :optional,
               name: :language,
               tag: 3,
               type: :string
             }}
          end

          def field_def("language") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "language",
               kind: {:scalar, ""},
               label: :optional,
               name: :language,
               tag: 3,
               type: :string
             }}
          end

          []
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: [:url | :media_type]
      def required_fields() do
        [:url, :media_type]
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:url) do
        {:ok, ""}
      end,
      def default(:media_type) do
        {:ok, ""}
      end,
      def default(:language) do
        {:ok, ""}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TranslatedString do
    @moduledoc false
    defstruct translation: [], __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          [] |> encode_translation(msg) |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_translation(acc, msg) do
          try do
            case msg.translation do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "\n", Protox.Encode.encode_message(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:translation, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.TranslatedString))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   translation:
                     msg.translation ++
                       [TransitRealtime.TranslatedString.Translation.decode!(delimited)]
                 ], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TranslatedString,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:translation, :unpacked, {:message, TransitRealtime.TranslatedString.Translation}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{translation: {1, :unpacked, {:message, TransitRealtime.TranslatedString.Translation}}}
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "translation",
            kind: :unpacked,
            label: :repeated,
            name: :translation,
            tag: 1,
            type: {:message, TransitRealtime.TranslatedString.Translation}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:translation) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "translation",
               kind: :unpacked,
               label: :repeated,
               name: :translation,
               tag: 1,
               type: {:message, TransitRealtime.TranslatedString.Translation}
             }}
          end

          def field_def("translation") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "translation",
               kind: :unpacked,
               label: :repeated,
               name: :translation,
               tag: 1,
               type: {:message, TransitRealtime.TranslatedString.Translation}
             }}
          end

          []
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:translation) do
        {:error, :no_default_value}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TranslatedString.Translation do
    @moduledoc false
    defstruct text: nil, language: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          [] |> encode_text(msg) |> encode_language(msg) |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_text(acc, msg) do
          try do
            case msg.text do
              nil -> raise Protox.RequiredFieldsError.new([:text])
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.text)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:text, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_language(acc, msg) do
          try do
            case msg.language do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.language)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:language, "invalid field value"), __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            {msg, set_fields} =
              parse_key_value([], bytes, struct(TransitRealtime.TranslatedString.Translation))

            case [:text] -- set_fields do
              [] -> msg
              missing_fields -> raise Protox.RequiredFieldsError.new(missing_fields)
            end
          end
        )
      )

      (
        @spec parse_key_value([atom], binary, struct) :: {struct, [atom]}
        defp parse_key_value(set_fields, <<>>, msg) do
          {msg, set_fields}
        end

        defp parse_key_value(set_fields, bytes, msg) do
          {new_set_fields, field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[:text | set_fields], [text: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:language | set_fields], [language: Protox.Decode.validate_string!(delimited)],
                 rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {set_fields,
                 [
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(new_set_fields, rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TranslatedString.Translation,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{1 => {:text, {:scalar, ""}, :string}, 2 => {:language, {:scalar, ""}, :string}}
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{language: {2, {:scalar, ""}, :string}, text: {1, {:scalar, ""}, :string}}
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "text",
            kind: {:scalar, ""},
            label: :required,
            name: :text,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "language",
            kind: {:scalar, ""},
            label: :optional,
            name: :language,
            tag: 2,
            type: :string
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:text) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "text",
               kind: {:scalar, ""},
               label: :required,
               name: :text,
               tag: 1,
               type: :string
             }}
          end

          def field_def("text") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "text",
               kind: {:scalar, ""},
               label: :required,
               name: :text,
               tag: 1,
               type: :string
             }}
          end

          []
        ),
        (
          def field_def(:language) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "language",
               kind: {:scalar, ""},
               label: :optional,
               name: :language,
               tag: 2,
               type: :string
             }}
          end

          def field_def("language") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "language",
               kind: {:scalar, ""},
               label: :optional,
               name: :language,
               tag: 2,
               type: :string
             }}
          end

          []
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: [:text]
      def required_fields() do
        [:text]
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:text) do
        {:ok, ""}
      end,
      def default(:language) do
        {:ok, ""}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TripDescriptor do
    @moduledoc false
    defstruct trip_id: nil,
              start_time: nil,
              start_date: nil,
              schedule_relationship: nil,
              route_id: nil,
              direction_id: nil,
              modified_trip: nil,
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_trip_id(msg)
          |> encode_start_time(msg)
          |> encode_start_date(msg)
          |> encode_schedule_relationship(msg)
          |> encode_route_id(msg)
          |> encode_direction_id(msg)
          |> encode_modified_trip(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_trip_id(acc, msg) do
          try do
            case msg.trip_id do
              nil -> acc
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.trip_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:trip_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_start_time(acc, msg) do
          try do
            case msg.start_time do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.start_time)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:start_time, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_start_date(acc, msg) do
          try do
            case msg.start_date do
              nil -> acc
              _ -> [acc, "\x1A", Protox.Encode.encode_string(msg.start_date)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:start_date, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_schedule_relationship(acc, msg) do
          try do
            case msg.schedule_relationship do
              nil ->
                acc

              _ ->
                [
                  acc,
                  " ",
                  msg.schedule_relationship
                  |> TransitRealtime.TripDescriptor.ScheduleRelationship.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:schedule_relationship, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_route_id(acc, msg) do
          try do
            case msg.route_id do
              nil -> acc
              _ -> [acc, "*", Protox.Encode.encode_string(msg.route_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:route_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_direction_id(acc, msg) do
          try do
            case msg.direction_id do
              nil -> acc
              _ -> [acc, "0", Protox.Encode.encode_uint32(msg.direction_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:direction_id, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_modified_trip(acc, msg) do
          try do
            case msg.modified_trip do
              nil -> acc
              _ -> [acc, ":", Protox.Encode.encode_message(msg.modified_trip)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:modified_trip, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.TripDescriptor))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[trip_id: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[start_time: Protox.Decode.validate_string!(delimited)], rest}

              {3, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[start_date: Protox.Decode.validate_string!(delimited)], rest}

              {4, _, bytes} ->
                {value, rest} =
                  Protox.Decode.parse_enum(
                    bytes,
                    TransitRealtime.TripDescriptor.ScheduleRelationship
                  )

                {[schedule_relationship: value], rest}

              {5, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[route_id: Protox.Decode.validate_string!(delimited)], rest}

              {6, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint32(bytes)
                {[direction_id: value], rest}

              {7, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   modified_trip:
                     Protox.MergeMessage.merge(
                       msg.modified_trip,
                       TransitRealtime.TripDescriptor.ModifiedTripSelector.decode!(delimited)
                     )
                 ], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TripDescriptor,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:trip_id, {:scalar, ""}, :string},
          2 => {:start_time, {:scalar, ""}, :string},
          3 => {:start_date, {:scalar, ""}, :string},
          4 =>
            {:schedule_relationship, {:scalar, :SCHEDULED},
             {:enum, TransitRealtime.TripDescriptor.ScheduleRelationship}},
          5 => {:route_id, {:scalar, ""}, :string},
          6 => {:direction_id, {:scalar, 0}, :uint32},
          7 =>
            {:modified_trip, {:scalar, nil},
             {:message, TransitRealtime.TripDescriptor.ModifiedTripSelector}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          direction_id: {6, {:scalar, 0}, :uint32},
          modified_trip:
            {7, {:scalar, nil}, {:message, TransitRealtime.TripDescriptor.ModifiedTripSelector}},
          route_id: {5, {:scalar, ""}, :string},
          schedule_relationship:
            {4, {:scalar, :SCHEDULED},
             {:enum, TransitRealtime.TripDescriptor.ScheduleRelationship}},
          start_date: {3, {:scalar, ""}, :string},
          start_time: {2, {:scalar, ""}, :string},
          trip_id: {1, {:scalar, ""}, :string}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "tripId",
            kind: {:scalar, ""},
            label: :optional,
            name: :trip_id,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "startTime",
            kind: {:scalar, ""},
            label: :optional,
            name: :start_time,
            tag: 2,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "startDate",
            kind: {:scalar, ""},
            label: :optional,
            name: :start_date,
            tag: 3,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "scheduleRelationship",
            kind: {:scalar, :SCHEDULED},
            label: :optional,
            name: :schedule_relationship,
            tag: 4,
            type: {:enum, TransitRealtime.TripDescriptor.ScheduleRelationship}
          },
          %{
            __struct__: Protox.Field,
            json_name: "routeId",
            kind: {:scalar, ""},
            label: :optional,
            name: :route_id,
            tag: 5,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "directionId",
            kind: {:scalar, 0},
            label: :optional,
            name: :direction_id,
            tag: 6,
            type: :uint32
          },
          %{
            __struct__: Protox.Field,
            json_name: "modifiedTrip",
            kind: {:scalar, nil},
            label: :optional,
            name: :modified_trip,
            tag: 7,
            type: {:message, TransitRealtime.TripDescriptor.ModifiedTripSelector}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:trip_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripId",
               kind: {:scalar, ""},
               label: :optional,
               name: :trip_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("tripId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripId",
               kind: {:scalar, ""},
               label: :optional,
               name: :trip_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("trip_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripId",
               kind: {:scalar, ""},
               label: :optional,
               name: :trip_id,
               tag: 1,
               type: :string
             }}
          end
        ),
        (
          def field_def(:start_time) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTime",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_time,
               tag: 2,
               type: :string
             }}
          end

          def field_def("startTime") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTime",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_time,
               tag: 2,
               type: :string
             }}
          end

          def field_def("start_time") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTime",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_time,
               tag: 2,
               type: :string
             }}
          end
        ),
        (
          def field_def(:start_date) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startDate",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_date,
               tag: 3,
               type: :string
             }}
          end

          def field_def("startDate") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startDate",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_date,
               tag: 3,
               type: :string
             }}
          end

          def field_def("start_date") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startDate",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_date,
               tag: 3,
               type: :string
             }}
          end
        ),
        (
          def field_def(:schedule_relationship) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "scheduleRelationship",
               kind: {:scalar, :SCHEDULED},
               label: :optional,
               name: :schedule_relationship,
               tag: 4,
               type: {:enum, TransitRealtime.TripDescriptor.ScheduleRelationship}
             }}
          end

          def field_def("scheduleRelationship") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "scheduleRelationship",
               kind: {:scalar, :SCHEDULED},
               label: :optional,
               name: :schedule_relationship,
               tag: 4,
               type: {:enum, TransitRealtime.TripDescriptor.ScheduleRelationship}
             }}
          end

          def field_def("schedule_relationship") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "scheduleRelationship",
               kind: {:scalar, :SCHEDULED},
               label: :optional,
               name: :schedule_relationship,
               tag: 4,
               type: {:enum, TransitRealtime.TripDescriptor.ScheduleRelationship}
             }}
          end
        ),
        (
          def field_def(:route_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "routeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :route_id,
               tag: 5,
               type: :string
             }}
          end

          def field_def("routeId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "routeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :route_id,
               tag: 5,
               type: :string
             }}
          end

          def field_def("route_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "routeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :route_id,
               tag: 5,
               type: :string
             }}
          end
        ),
        (
          def field_def(:direction_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "directionId",
               kind: {:scalar, 0},
               label: :optional,
               name: :direction_id,
               tag: 6,
               type: :uint32
             }}
          end

          def field_def("directionId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "directionId",
               kind: {:scalar, 0},
               label: :optional,
               name: :direction_id,
               tag: 6,
               type: :uint32
             }}
          end

          def field_def("direction_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "directionId",
               kind: {:scalar, 0},
               label: :optional,
               name: :direction_id,
               tag: 6,
               type: :uint32
             }}
          end
        ),
        (
          def field_def(:modified_trip) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "modifiedTrip",
               kind: {:scalar, nil},
               label: :optional,
               name: :modified_trip,
               tag: 7,
               type: {:message, TransitRealtime.TripDescriptor.ModifiedTripSelector}
             }}
          end

          def field_def("modifiedTrip") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "modifiedTrip",
               kind: {:scalar, nil},
               label: :optional,
               name: :modified_trip,
               tag: 7,
               type: {:message, TransitRealtime.TripDescriptor.ModifiedTripSelector}
             }}
          end

          def field_def("modified_trip") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "modifiedTrip",
               kind: {:scalar, nil},
               label: :optional,
               name: :modified_trip,
               tag: 7,
               type: {:message, TransitRealtime.TripDescriptor.ModifiedTripSelector}
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:trip_id) do
        {:ok, ""}
      end,
      def default(:start_time) do
        {:ok, ""}
      end,
      def default(:start_date) do
        {:ok, ""}
      end,
      def default(:schedule_relationship) do
        {:ok, :SCHEDULED}
      end,
      def default(:route_id) do
        {:ok, ""}
      end,
      def default(:direction_id) do
        {:ok, 0}
      end,
      def default(:modified_trip) do
        {:ok, nil}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TripDescriptor.ModifiedTripSelector do
    @moduledoc false
    defstruct modifications_id: nil,
              affected_trip_id: nil,
              start_time: nil,
              start_date: nil,
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_modifications_id(msg)
          |> encode_affected_trip_id(msg)
          |> encode_start_time(msg)
          |> encode_start_date(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_modifications_id(acc, msg) do
          try do
            case msg.modifications_id do
              nil -> acc
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.modifications_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:modifications_id, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_affected_trip_id(acc, msg) do
          try do
            case msg.affected_trip_id do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.affected_trip_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:affected_trip_id, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_start_time(acc, msg) do
          try do
            case msg.start_time do
              nil -> acc
              _ -> [acc, "\x1A", Protox.Encode.encode_string(msg.start_time)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:start_time, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_start_date(acc, msg) do
          try do
            case msg.start_date do
              nil -> acc
              _ -> [acc, "\"", Protox.Encode.encode_string(msg.start_date)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:start_date, "invalid field value"), __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.TripDescriptor.ModifiedTripSelector))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[modifications_id: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[affected_trip_id: Protox.Decode.validate_string!(delimited)], rest}

              {3, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[start_time: Protox.Decode.validate_string!(delimited)], rest}

              {4, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[start_date: Protox.Decode.validate_string!(delimited)], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TripDescriptor.ModifiedTripSelector,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:modifications_id, {:scalar, ""}, :string},
          2 => {:affected_trip_id, {:scalar, ""}, :string},
          3 => {:start_time, {:scalar, ""}, :string},
          4 => {:start_date, {:scalar, ""}, :string}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          affected_trip_id: {2, {:scalar, ""}, :string},
          modifications_id: {1, {:scalar, ""}, :string},
          start_date: {4, {:scalar, ""}, :string},
          start_time: {3, {:scalar, ""}, :string}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "modificationsId",
            kind: {:scalar, ""},
            label: :optional,
            name: :modifications_id,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "affectedTripId",
            kind: {:scalar, ""},
            label: :optional,
            name: :affected_trip_id,
            tag: 2,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "startTime",
            kind: {:scalar, ""},
            label: :optional,
            name: :start_time,
            tag: 3,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "startDate",
            kind: {:scalar, ""},
            label: :optional,
            name: :start_date,
            tag: 4,
            type: :string
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:modifications_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "modificationsId",
               kind: {:scalar, ""},
               label: :optional,
               name: :modifications_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("modificationsId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "modificationsId",
               kind: {:scalar, ""},
               label: :optional,
               name: :modifications_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("modifications_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "modificationsId",
               kind: {:scalar, ""},
               label: :optional,
               name: :modifications_id,
               tag: 1,
               type: :string
             }}
          end
        ),
        (
          def field_def(:affected_trip_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "affectedTripId",
               kind: {:scalar, ""},
               label: :optional,
               name: :affected_trip_id,
               tag: 2,
               type: :string
             }}
          end

          def field_def("affectedTripId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "affectedTripId",
               kind: {:scalar, ""},
               label: :optional,
               name: :affected_trip_id,
               tag: 2,
               type: :string
             }}
          end

          def field_def("affected_trip_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "affectedTripId",
               kind: {:scalar, ""},
               label: :optional,
               name: :affected_trip_id,
               tag: 2,
               type: :string
             }}
          end
        ),
        (
          def field_def(:start_time) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTime",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_time,
               tag: 3,
               type: :string
             }}
          end

          def field_def("startTime") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTime",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_time,
               tag: 3,
               type: :string
             }}
          end

          def field_def("start_time") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTime",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_time,
               tag: 3,
               type: :string
             }}
          end
        ),
        (
          def field_def(:start_date) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startDate",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_date,
               tag: 4,
               type: :string
             }}
          end

          def field_def("startDate") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startDate",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_date,
               tag: 4,
               type: :string
             }}
          end

          def field_def("start_date") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startDate",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_date,
               tag: 4,
               type: :string
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:modifications_id) do
        {:ok, ""}
      end,
      def default(:affected_trip_id) do
        {:ok, ""}
      end,
      def default(:start_time) do
        {:ok, ""}
      end,
      def default(:start_date) do
        {:ok, ""}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TripModifications do
    @moduledoc false
    defstruct selected_trips: [],
              start_times: [],
              service_dates: [],
              modifications: [],
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_selected_trips(msg)
          |> encode_start_times(msg)
          |> encode_service_dates(msg)
          |> encode_modifications(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_selected_trips(acc, msg) do
          try do
            case msg.selected_trips do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "\n", Protox.Encode.encode_message(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:selected_trips, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_start_times(acc, msg) do
          try do
            case msg.start_times do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "\x12", Protox.Encode.encode_string(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:start_times, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_service_dates(acc, msg) do
          try do
            case msg.service_dates do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "\x1A", Protox.Encode.encode_string(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:service_dates, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_modifications(acc, msg) do
          try do
            case msg.modifications do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "\"", Protox.Encode.encode_message(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:modifications, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.TripModifications))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   selected_trips:
                     msg.selected_trips ++
                       [TransitRealtime.TripModifications.SelectedTrips.decode!(delimited)]
                 ], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[start_times: msg.start_times ++ [Protox.Decode.validate_string!(delimited)]],
                 rest}

              {3, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   service_dates: msg.service_dates ++ [Protox.Decode.validate_string!(delimited)]
                 ], rest}

              {4, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   modifications:
                     msg.modifications ++
                       [TransitRealtime.TripModifications.Modification.decode!(delimited)]
                 ], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TripModifications,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 =>
            {:selected_trips, :unpacked,
             {:message, TransitRealtime.TripModifications.SelectedTrips}},
          2 => {:start_times, :unpacked, :string},
          3 => {:service_dates, :unpacked, :string},
          4 =>
            {:modifications, :unpacked,
             {:message, TransitRealtime.TripModifications.Modification}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          modifications:
            {4, :unpacked, {:message, TransitRealtime.TripModifications.Modification}},
          selected_trips:
            {1, :unpacked, {:message, TransitRealtime.TripModifications.SelectedTrips}},
          service_dates: {3, :unpacked, :string},
          start_times: {2, :unpacked, :string}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "selectedTrips",
            kind: :unpacked,
            label: :repeated,
            name: :selected_trips,
            tag: 1,
            type: {:message, TransitRealtime.TripModifications.SelectedTrips}
          },
          %{
            __struct__: Protox.Field,
            json_name: "startTimes",
            kind: :unpacked,
            label: :repeated,
            name: :start_times,
            tag: 2,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "serviceDates",
            kind: :unpacked,
            label: :repeated,
            name: :service_dates,
            tag: 3,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "modifications",
            kind: :unpacked,
            label: :repeated,
            name: :modifications,
            tag: 4,
            type: {:message, TransitRealtime.TripModifications.Modification}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:selected_trips) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "selectedTrips",
               kind: :unpacked,
               label: :repeated,
               name: :selected_trips,
               tag: 1,
               type: {:message, TransitRealtime.TripModifications.SelectedTrips}
             }}
          end

          def field_def("selectedTrips") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "selectedTrips",
               kind: :unpacked,
               label: :repeated,
               name: :selected_trips,
               tag: 1,
               type: {:message, TransitRealtime.TripModifications.SelectedTrips}
             }}
          end

          def field_def("selected_trips") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "selectedTrips",
               kind: :unpacked,
               label: :repeated,
               name: :selected_trips,
               tag: 1,
               type: {:message, TransitRealtime.TripModifications.SelectedTrips}
             }}
          end
        ),
        (
          def field_def(:start_times) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTimes",
               kind: :unpacked,
               label: :repeated,
               name: :start_times,
               tag: 2,
               type: :string
             }}
          end

          def field_def("startTimes") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTimes",
               kind: :unpacked,
               label: :repeated,
               name: :start_times,
               tag: 2,
               type: :string
             }}
          end

          def field_def("start_times") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTimes",
               kind: :unpacked,
               label: :repeated,
               name: :start_times,
               tag: 2,
               type: :string
             }}
          end
        ),
        (
          def field_def(:service_dates) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "serviceDates",
               kind: :unpacked,
               label: :repeated,
               name: :service_dates,
               tag: 3,
               type: :string
             }}
          end

          def field_def("serviceDates") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "serviceDates",
               kind: :unpacked,
               label: :repeated,
               name: :service_dates,
               tag: 3,
               type: :string
             }}
          end

          def field_def("service_dates") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "serviceDates",
               kind: :unpacked,
               label: :repeated,
               name: :service_dates,
               tag: 3,
               type: :string
             }}
          end
        ),
        (
          def field_def(:modifications) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "modifications",
               kind: :unpacked,
               label: :repeated,
               name: :modifications,
               tag: 4,
               type: {:message, TransitRealtime.TripModifications.Modification}
             }}
          end

          def field_def("modifications") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "modifications",
               kind: :unpacked,
               label: :repeated,
               name: :modifications,
               tag: 4,
               type: {:message, TransitRealtime.TripModifications.Modification}
             }}
          end

          []
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:selected_trips) do
        {:error, :no_default_value}
      end,
      def default(:start_times) do
        {:error, :no_default_value}
      end,
      def default(:service_dates) do
        {:error, :no_default_value}
      end,
      def default(:modifications) do
        {:error, :no_default_value}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TripModifications.Modification do
    @moduledoc false
    defstruct start_stop_selector: nil,
              end_stop_selector: nil,
              propagated_modification_delay: nil,
              replacement_stops: [],
              service_alert_id: nil,
              last_modified_time: nil,
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_start_stop_selector(msg)
          |> encode_end_stop_selector(msg)
          |> encode_propagated_modification_delay(msg)
          |> encode_replacement_stops(msg)
          |> encode_service_alert_id(msg)
          |> encode_last_modified_time(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_start_stop_selector(acc, msg) do
          try do
            case msg.start_stop_selector do
              nil -> acc
              _ -> [acc, "\n", Protox.Encode.encode_message(msg.start_stop_selector)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:start_stop_selector, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_end_stop_selector(acc, msg) do
          try do
            case msg.end_stop_selector do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_message(msg.end_stop_selector)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:end_stop_selector, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_propagated_modification_delay(acc, msg) do
          try do
            case msg.propagated_modification_delay do
              nil -> acc
              _ -> [acc, "\x18", Protox.Encode.encode_int32(msg.propagated_modification_delay)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(
                        :propagated_modification_delay,
                        "invalid field value"
                      ),
                      __STACKTRACE__
          end
        end,
        defp encode_replacement_stops(acc, msg) do
          try do
            case msg.replacement_stops do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "\"", Protox.Encode.encode_message(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:replacement_stops, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_service_alert_id(acc, msg) do
          try do
            case msg.service_alert_id do
              nil -> acc
              _ -> [acc, "*", Protox.Encode.encode_string(msg.service_alert_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:service_alert_id, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_last_modified_time(acc, msg) do
          try do
            case msg.last_modified_time do
              nil -> acc
              _ -> [acc, "0", Protox.Encode.encode_uint64(msg.last_modified_time)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:last_modified_time, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.TripModifications.Modification))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   start_stop_selector:
                     Protox.MergeMessage.merge(
                       msg.start_stop_selector,
                       TransitRealtime.StopSelector.decode!(delimited)
                     )
                 ], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   end_stop_selector:
                     Protox.MergeMessage.merge(
                       msg.end_stop_selector,
                       TransitRealtime.StopSelector.decode!(delimited)
                     )
                 ], rest}

              {3, _, bytes} ->
                {value, rest} = Protox.Decode.parse_int32(bytes)
                {[propagated_modification_delay: value], rest}

              {4, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   replacement_stops:
                     msg.replacement_stops ++ [TransitRealtime.ReplacementStop.decode!(delimited)]
                 ], rest}

              {5, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[service_alert_id: Protox.Decode.validate_string!(delimited)], rest}

              {6, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint64(bytes)
                {[last_modified_time: value], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TripModifications.Modification,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:start_stop_selector, {:scalar, nil}, {:message, TransitRealtime.StopSelector}},
          2 => {:end_stop_selector, {:scalar, nil}, {:message, TransitRealtime.StopSelector}},
          3 => {:propagated_modification_delay, {:scalar, 0}, :int32},
          4 => {:replacement_stops, :unpacked, {:message, TransitRealtime.ReplacementStop}},
          5 => {:service_alert_id, {:scalar, ""}, :string},
          6 => {:last_modified_time, {:scalar, 0}, :uint64}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          end_stop_selector: {2, {:scalar, nil}, {:message, TransitRealtime.StopSelector}},
          last_modified_time: {6, {:scalar, 0}, :uint64},
          propagated_modification_delay: {3, {:scalar, 0}, :int32},
          replacement_stops: {4, :unpacked, {:message, TransitRealtime.ReplacementStop}},
          service_alert_id: {5, {:scalar, ""}, :string},
          start_stop_selector: {1, {:scalar, nil}, {:message, TransitRealtime.StopSelector}}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "startStopSelector",
            kind: {:scalar, nil},
            label: :optional,
            name: :start_stop_selector,
            tag: 1,
            type: {:message, TransitRealtime.StopSelector}
          },
          %{
            __struct__: Protox.Field,
            json_name: "endStopSelector",
            kind: {:scalar, nil},
            label: :optional,
            name: :end_stop_selector,
            tag: 2,
            type: {:message, TransitRealtime.StopSelector}
          },
          %{
            __struct__: Protox.Field,
            json_name: "propagatedModificationDelay",
            kind: {:scalar, 0},
            label: :optional,
            name: :propagated_modification_delay,
            tag: 3,
            type: :int32
          },
          %{
            __struct__: Protox.Field,
            json_name: "replacementStops",
            kind: :unpacked,
            label: :repeated,
            name: :replacement_stops,
            tag: 4,
            type: {:message, TransitRealtime.ReplacementStop}
          },
          %{
            __struct__: Protox.Field,
            json_name: "serviceAlertId",
            kind: {:scalar, ""},
            label: :optional,
            name: :service_alert_id,
            tag: 5,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "lastModifiedTime",
            kind: {:scalar, 0},
            label: :optional,
            name: :last_modified_time,
            tag: 6,
            type: :uint64
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:start_stop_selector) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startStopSelector",
               kind: {:scalar, nil},
               label: :optional,
               name: :start_stop_selector,
               tag: 1,
               type: {:message, TransitRealtime.StopSelector}
             }}
          end

          def field_def("startStopSelector") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startStopSelector",
               kind: {:scalar, nil},
               label: :optional,
               name: :start_stop_selector,
               tag: 1,
               type: {:message, TransitRealtime.StopSelector}
             }}
          end

          def field_def("start_stop_selector") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startStopSelector",
               kind: {:scalar, nil},
               label: :optional,
               name: :start_stop_selector,
               tag: 1,
               type: {:message, TransitRealtime.StopSelector}
             }}
          end
        ),
        (
          def field_def(:end_stop_selector) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "endStopSelector",
               kind: {:scalar, nil},
               label: :optional,
               name: :end_stop_selector,
               tag: 2,
               type: {:message, TransitRealtime.StopSelector}
             }}
          end

          def field_def("endStopSelector") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "endStopSelector",
               kind: {:scalar, nil},
               label: :optional,
               name: :end_stop_selector,
               tag: 2,
               type: {:message, TransitRealtime.StopSelector}
             }}
          end

          def field_def("end_stop_selector") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "endStopSelector",
               kind: {:scalar, nil},
               label: :optional,
               name: :end_stop_selector,
               tag: 2,
               type: {:message, TransitRealtime.StopSelector}
             }}
          end
        ),
        (
          def field_def(:propagated_modification_delay) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "propagatedModificationDelay",
               kind: {:scalar, 0},
               label: :optional,
               name: :propagated_modification_delay,
               tag: 3,
               type: :int32
             }}
          end

          def field_def("propagatedModificationDelay") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "propagatedModificationDelay",
               kind: {:scalar, 0},
               label: :optional,
               name: :propagated_modification_delay,
               tag: 3,
               type: :int32
             }}
          end

          def field_def("propagated_modification_delay") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "propagatedModificationDelay",
               kind: {:scalar, 0},
               label: :optional,
               name: :propagated_modification_delay,
               tag: 3,
               type: :int32
             }}
          end
        ),
        (
          def field_def(:replacement_stops) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "replacementStops",
               kind: :unpacked,
               label: :repeated,
               name: :replacement_stops,
               tag: 4,
               type: {:message, TransitRealtime.ReplacementStop}
             }}
          end

          def field_def("replacementStops") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "replacementStops",
               kind: :unpacked,
               label: :repeated,
               name: :replacement_stops,
               tag: 4,
               type: {:message, TransitRealtime.ReplacementStop}
             }}
          end

          def field_def("replacement_stops") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "replacementStops",
               kind: :unpacked,
               label: :repeated,
               name: :replacement_stops,
               tag: 4,
               type: {:message, TransitRealtime.ReplacementStop}
             }}
          end
        ),
        (
          def field_def(:service_alert_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "serviceAlertId",
               kind: {:scalar, ""},
               label: :optional,
               name: :service_alert_id,
               tag: 5,
               type: :string
             }}
          end

          def field_def("serviceAlertId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "serviceAlertId",
               kind: {:scalar, ""},
               label: :optional,
               name: :service_alert_id,
               tag: 5,
               type: :string
             }}
          end

          def field_def("service_alert_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "serviceAlertId",
               kind: {:scalar, ""},
               label: :optional,
               name: :service_alert_id,
               tag: 5,
               type: :string
             }}
          end
        ),
        (
          def field_def(:last_modified_time) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "lastModifiedTime",
               kind: {:scalar, 0},
               label: :optional,
               name: :last_modified_time,
               tag: 6,
               type: :uint64
             }}
          end

          def field_def("lastModifiedTime") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "lastModifiedTime",
               kind: {:scalar, 0},
               label: :optional,
               name: :last_modified_time,
               tag: 6,
               type: :uint64
             }}
          end

          def field_def("last_modified_time") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "lastModifiedTime",
               kind: {:scalar, 0},
               label: :optional,
               name: :last_modified_time,
               tag: 6,
               type: :uint64
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:start_stop_selector) do
        {:ok, nil}
      end,
      def default(:end_stop_selector) do
        {:ok, nil}
      end,
      def default(:propagated_modification_delay) do
        {:ok, 0}
      end,
      def default(:replacement_stops) do
        {:error, :no_default_value}
      end,
      def default(:service_alert_id) do
        {:ok, ""}
      end,
      def default(:last_modified_time) do
        {:ok, 0}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TripModifications.SelectedTrips do
    @moduledoc false
    defstruct trip_ids: [], shape_id: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          [] |> encode_trip_ids(msg) |> encode_shape_id(msg) |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_trip_ids(acc, msg) do
          try do
            case msg.trip_ids do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "\n", Protox.Encode.encode_string(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:trip_ids, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_shape_id(acc, msg) do
          try do
            case msg.shape_id do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.shape_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:shape_id, "invalid field value"), __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.TripModifications.SelectedTrips))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[trip_ids: msg.trip_ids ++ [Protox.Decode.validate_string!(delimited)]], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[shape_id: Protox.Decode.validate_string!(delimited)], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TripModifications.SelectedTrips,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{1 => {:trip_ids, :unpacked, :string}, 2 => {:shape_id, {:scalar, ""}, :string}}
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{shape_id: {2, {:scalar, ""}, :string}, trip_ids: {1, :unpacked, :string}}
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "tripIds",
            kind: :unpacked,
            label: :repeated,
            name: :trip_ids,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "shapeId",
            kind: {:scalar, ""},
            label: :optional,
            name: :shape_id,
            tag: 2,
            type: :string
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:trip_ids) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripIds",
               kind: :unpacked,
               label: :repeated,
               name: :trip_ids,
               tag: 1,
               type: :string
             }}
          end

          def field_def("tripIds") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripIds",
               kind: :unpacked,
               label: :repeated,
               name: :trip_ids,
               tag: 1,
               type: :string
             }}
          end

          def field_def("trip_ids") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripIds",
               kind: :unpacked,
               label: :repeated,
               name: :trip_ids,
               tag: 1,
               type: :string
             }}
          end
        ),
        (
          def field_def(:shape_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "shapeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :shape_id,
               tag: 2,
               type: :string
             }}
          end

          def field_def("shapeId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "shapeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :shape_id,
               tag: 2,
               type: :string
             }}
          end

          def field_def("shape_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "shapeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :shape_id,
               tag: 2,
               type: :string
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:trip_ids) do
        {:error, :no_default_value}
      end,
      def default(:shape_id) do
        {:ok, ""}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TripUpdate do
    @moduledoc false
    defstruct trip: nil,
              stop_time_update: [],
              vehicle: nil,
              timestamp: nil,
              delay: nil,
              trip_properties: nil,
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_trip(msg)
          |> encode_stop_time_update(msg)
          |> encode_vehicle(msg)
          |> encode_timestamp(msg)
          |> encode_delay(msg)
          |> encode_trip_properties(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_trip(acc, msg) do
          try do
            case msg.trip do
              nil -> raise Protox.RequiredFieldsError.new([:trip])
              _ -> [acc, "\n", Protox.Encode.encode_message(msg.trip)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:trip, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_stop_time_update(acc, msg) do
          try do
            case msg.stop_time_update do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "\x12", Protox.Encode.encode_message(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_time_update, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_vehicle(acc, msg) do
          try do
            case msg.vehicle do
              nil -> acc
              _ -> [acc, "\x1A", Protox.Encode.encode_message(msg.vehicle)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:vehicle, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_timestamp(acc, msg) do
          try do
            case msg.timestamp do
              nil -> acc
              _ -> [acc, " ", Protox.Encode.encode_uint64(msg.timestamp)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:timestamp, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_delay(acc, msg) do
          try do
            case msg.delay do
              nil -> acc
              _ -> [acc, "(", Protox.Encode.encode_int32(msg.delay)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:delay, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_trip_properties(acc, msg) do
          try do
            case msg.trip_properties do
              nil -> acc
              _ -> [acc, "2", Protox.Encode.encode_message(msg.trip_properties)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:trip_properties, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            {msg, set_fields} = parse_key_value([], bytes, struct(TransitRealtime.TripUpdate))

            case [:trip] -- set_fields do
              [] -> msg
              missing_fields -> raise Protox.RequiredFieldsError.new(missing_fields)
            end
          end
        )
      )

      (
        @spec parse_key_value([atom], binary, struct) :: {struct, [atom]}
        defp parse_key_value(set_fields, <<>>, msg) do
          {msg, set_fields}
        end

        defp parse_key_value(set_fields, bytes, msg) do
          {new_set_fields, field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:trip | set_fields],
                 [
                   trip:
                     Protox.MergeMessage.merge(
                       msg.trip,
                       TransitRealtime.TripDescriptor.decode!(delimited)
                     )
                 ], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:stop_time_update | set_fields],
                 [
                   stop_time_update:
                     msg.stop_time_update ++
                       [TransitRealtime.TripUpdate.StopTimeUpdate.decode!(delimited)]
                 ], rest}

              {3, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:vehicle | set_fields],
                 [
                   vehicle:
                     Protox.MergeMessage.merge(
                       msg.vehicle,
                       TransitRealtime.VehicleDescriptor.decode!(delimited)
                     )
                 ], rest}

              {4, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint64(bytes)
                {[:timestamp | set_fields], [timestamp: value], rest}

              {5, _, bytes} ->
                {value, rest} = Protox.Decode.parse_int32(bytes)
                {[:delay | set_fields], [delay: value], rest}

              {6, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[:trip_properties | set_fields],
                 [
                   trip_properties:
                     Protox.MergeMessage.merge(
                       msg.trip_properties,
                       TransitRealtime.TripUpdate.TripProperties.decode!(delimited)
                     )
                 ], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {set_fields,
                 [
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(new_set_fields, rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TripUpdate,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:trip, {:scalar, nil}, {:message, TransitRealtime.TripDescriptor}},
          2 =>
            {:stop_time_update, :unpacked, {:message, TransitRealtime.TripUpdate.StopTimeUpdate}},
          3 => {:vehicle, {:scalar, nil}, {:message, TransitRealtime.VehicleDescriptor}},
          4 => {:timestamp, {:scalar, 0}, :uint64},
          5 => {:delay, {:scalar, 0}, :int32},
          6 =>
            {:trip_properties, {:scalar, nil},
             {:message, TransitRealtime.TripUpdate.TripProperties}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          delay: {5, {:scalar, 0}, :int32},
          stop_time_update: {2, :unpacked, {:message, TransitRealtime.TripUpdate.StopTimeUpdate}},
          timestamp: {4, {:scalar, 0}, :uint64},
          trip: {1, {:scalar, nil}, {:message, TransitRealtime.TripDescriptor}},
          trip_properties:
            {6, {:scalar, nil}, {:message, TransitRealtime.TripUpdate.TripProperties}},
          vehicle: {3, {:scalar, nil}, {:message, TransitRealtime.VehicleDescriptor}}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "trip",
            kind: {:scalar, nil},
            label: :required,
            name: :trip,
            tag: 1,
            type: {:message, TransitRealtime.TripDescriptor}
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopTimeUpdate",
            kind: :unpacked,
            label: :repeated,
            name: :stop_time_update,
            tag: 2,
            type: {:message, TransitRealtime.TripUpdate.StopTimeUpdate}
          },
          %{
            __struct__: Protox.Field,
            json_name: "vehicle",
            kind: {:scalar, nil},
            label: :optional,
            name: :vehicle,
            tag: 3,
            type: {:message, TransitRealtime.VehicleDescriptor}
          },
          %{
            __struct__: Protox.Field,
            json_name: "timestamp",
            kind: {:scalar, 0},
            label: :optional,
            name: :timestamp,
            tag: 4,
            type: :uint64
          },
          %{
            __struct__: Protox.Field,
            json_name: "delay",
            kind: {:scalar, 0},
            label: :optional,
            name: :delay,
            tag: 5,
            type: :int32
          },
          %{
            __struct__: Protox.Field,
            json_name: "tripProperties",
            kind: {:scalar, nil},
            label: :optional,
            name: :trip_properties,
            tag: 6,
            type: {:message, TransitRealtime.TripUpdate.TripProperties}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:trip) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "trip",
               kind: {:scalar, nil},
               label: :required,
               name: :trip,
               tag: 1,
               type: {:message, TransitRealtime.TripDescriptor}
             }}
          end

          def field_def("trip") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "trip",
               kind: {:scalar, nil},
               label: :required,
               name: :trip,
               tag: 1,
               type: {:message, TransitRealtime.TripDescriptor}
             }}
          end

          []
        ),
        (
          def field_def(:stop_time_update) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopTimeUpdate",
               kind: :unpacked,
               label: :repeated,
               name: :stop_time_update,
               tag: 2,
               type: {:message, TransitRealtime.TripUpdate.StopTimeUpdate}
             }}
          end

          def field_def("stopTimeUpdate") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopTimeUpdate",
               kind: :unpacked,
               label: :repeated,
               name: :stop_time_update,
               tag: 2,
               type: {:message, TransitRealtime.TripUpdate.StopTimeUpdate}
             }}
          end

          def field_def("stop_time_update") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopTimeUpdate",
               kind: :unpacked,
               label: :repeated,
               name: :stop_time_update,
               tag: 2,
               type: {:message, TransitRealtime.TripUpdate.StopTimeUpdate}
             }}
          end
        ),
        (
          def field_def(:vehicle) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "vehicle",
               kind: {:scalar, nil},
               label: :optional,
               name: :vehicle,
               tag: 3,
               type: {:message, TransitRealtime.VehicleDescriptor}
             }}
          end

          def field_def("vehicle") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "vehicle",
               kind: {:scalar, nil},
               label: :optional,
               name: :vehicle,
               tag: 3,
               type: {:message, TransitRealtime.VehicleDescriptor}
             }}
          end

          []
        ),
        (
          def field_def(:timestamp) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "timestamp",
               kind: {:scalar, 0},
               label: :optional,
               name: :timestamp,
               tag: 4,
               type: :uint64
             }}
          end

          def field_def("timestamp") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "timestamp",
               kind: {:scalar, 0},
               label: :optional,
               name: :timestamp,
               tag: 4,
               type: :uint64
             }}
          end

          []
        ),
        (
          def field_def(:delay) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "delay",
               kind: {:scalar, 0},
               label: :optional,
               name: :delay,
               tag: 5,
               type: :int32
             }}
          end

          def field_def("delay") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "delay",
               kind: {:scalar, 0},
               label: :optional,
               name: :delay,
               tag: 5,
               type: :int32
             }}
          end

          []
        ),
        (
          def field_def(:trip_properties) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripProperties",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip_properties,
               tag: 6,
               type: {:message, TransitRealtime.TripUpdate.TripProperties}
             }}
          end

          def field_def("tripProperties") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripProperties",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip_properties,
               tag: 6,
               type: {:message, TransitRealtime.TripUpdate.TripProperties}
             }}
          end

          def field_def("trip_properties") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripProperties",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip_properties,
               tag: 6,
               type: {:message, TransitRealtime.TripUpdate.TripProperties}
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: [:trip]
      def required_fields() do
        [:trip]
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:trip) do
        {:ok, nil}
      end,
      def default(:stop_time_update) do
        {:error, :no_default_value}
      end,
      def default(:vehicle) do
        {:ok, nil}
      end,
      def default(:timestamp) do
        {:ok, 0}
      end,
      def default(:delay) do
        {:ok, 0}
      end,
      def default(:trip_properties) do
        {:ok, nil}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TripUpdate.StopTimeEvent do
    @moduledoc false
    defstruct delay: nil, time: nil, uncertainty: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_delay(msg)
          |> encode_time(msg)
          |> encode_uncertainty(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_delay(acc, msg) do
          try do
            case msg.delay do
              nil -> acc
              _ -> [acc, "\b", Protox.Encode.encode_int32(msg.delay)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:delay, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_time(acc, msg) do
          try do
            case msg.time do
              nil -> acc
              _ -> [acc, "\x10", Protox.Encode.encode_int64(msg.time)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:time, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_uncertainty(acc, msg) do
          try do
            case msg.uncertainty do
              nil -> acc
              _ -> [acc, "\x18", Protox.Encode.encode_int32(msg.uncertainty)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:uncertainty, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.TripUpdate.StopTimeEvent))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {value, rest} = Protox.Decode.parse_int32(bytes)
                {[delay: value], rest}

              {2, _, bytes} ->
                {value, rest} = Protox.Decode.parse_int64(bytes)
                {[time: value], rest}

              {3, _, bytes} ->
                {value, rest} = Protox.Decode.parse_int32(bytes)
                {[uncertainty: value], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TripUpdate.StopTimeEvent,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:delay, {:scalar, 0}, :int32},
          2 => {:time, {:scalar, 0}, :int64},
          3 => {:uncertainty, {:scalar, 0}, :int32}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          delay: {1, {:scalar, 0}, :int32},
          time: {2, {:scalar, 0}, :int64},
          uncertainty: {3, {:scalar, 0}, :int32}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "delay",
            kind: {:scalar, 0},
            label: :optional,
            name: :delay,
            tag: 1,
            type: :int32
          },
          %{
            __struct__: Protox.Field,
            json_name: "time",
            kind: {:scalar, 0},
            label: :optional,
            name: :time,
            tag: 2,
            type: :int64
          },
          %{
            __struct__: Protox.Field,
            json_name: "uncertainty",
            kind: {:scalar, 0},
            label: :optional,
            name: :uncertainty,
            tag: 3,
            type: :int32
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:delay) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "delay",
               kind: {:scalar, 0},
               label: :optional,
               name: :delay,
               tag: 1,
               type: :int32
             }}
          end

          def field_def("delay") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "delay",
               kind: {:scalar, 0},
               label: :optional,
               name: :delay,
               tag: 1,
               type: :int32
             }}
          end

          []
        ),
        (
          def field_def(:time) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "time",
               kind: {:scalar, 0},
               label: :optional,
               name: :time,
               tag: 2,
               type: :int64
             }}
          end

          def field_def("time") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "time",
               kind: {:scalar, 0},
               label: :optional,
               name: :time,
               tag: 2,
               type: :int64
             }}
          end

          []
        ),
        (
          def field_def(:uncertainty) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "uncertainty",
               kind: {:scalar, 0},
               label: :optional,
               name: :uncertainty,
               tag: 3,
               type: :int32
             }}
          end

          def field_def("uncertainty") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "uncertainty",
               kind: {:scalar, 0},
               label: :optional,
               name: :uncertainty,
               tag: 3,
               type: :int32
             }}
          end

          []
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:delay) do
        {:ok, 0}
      end,
      def default(:time) do
        {:ok, 0}
      end,
      def default(:uncertainty) do
        {:ok, 0}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TripUpdate.StopTimeUpdate do
    @moduledoc false
    defstruct stop_sequence: nil,
              arrival: nil,
              departure: nil,
              stop_id: nil,
              schedule_relationship: nil,
              stop_time_properties: nil,
              departure_occupancy_status: nil,
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_stop_sequence(msg)
          |> encode_arrival(msg)
          |> encode_departure(msg)
          |> encode_stop_id(msg)
          |> encode_schedule_relationship(msg)
          |> encode_stop_time_properties(msg)
          |> encode_departure_occupancy_status(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_stop_sequence(acc, msg) do
          try do
            case msg.stop_sequence do
              nil -> acc
              _ -> [acc, "\b", Protox.Encode.encode_uint32(msg.stop_sequence)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_sequence, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_arrival(acc, msg) do
          try do
            case msg.arrival do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_message(msg.arrival)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:arrival, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_departure(acc, msg) do
          try do
            case msg.departure do
              nil -> acc
              _ -> [acc, "\x1A", Protox.Encode.encode_message(msg.departure)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:departure, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_stop_id(acc, msg) do
          try do
            case msg.stop_id do
              nil -> acc
              _ -> [acc, "\"", Protox.Encode.encode_string(msg.stop_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_schedule_relationship(acc, msg) do
          try do
            case msg.schedule_relationship do
              nil ->
                acc

              _ ->
                [
                  acc,
                  "(",
                  msg.schedule_relationship
                  |> TransitRealtime.TripUpdate.StopTimeUpdate.ScheduleRelationship.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:schedule_relationship, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_stop_time_properties(acc, msg) do
          try do
            case msg.stop_time_properties do
              nil -> acc
              _ -> [acc, "2", Protox.Encode.encode_message(msg.stop_time_properties)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_time_properties, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_departure_occupancy_status(acc, msg) do
          try do
            case msg.departure_occupancy_status do
              nil ->
                acc

              _ ->
                [
                  acc,
                  "8",
                  msg.departure_occupancy_status
                  |> TransitRealtime.VehiclePosition.OccupancyStatus.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(
                        :departure_occupancy_status,
                        "invalid field value"
                      ),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.TripUpdate.StopTimeUpdate))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint32(bytes)
                {[stop_sequence: value], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   arrival:
                     Protox.MergeMessage.merge(
                       msg.arrival,
                       TransitRealtime.TripUpdate.StopTimeEvent.decode!(delimited)
                     )
                 ], rest}

              {3, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   departure:
                     Protox.MergeMessage.merge(
                       msg.departure,
                       TransitRealtime.TripUpdate.StopTimeEvent.decode!(delimited)
                     )
                 ], rest}

              {4, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[stop_id: Protox.Decode.validate_string!(delimited)], rest}

              {5, _, bytes} ->
                {value, rest} =
                  Protox.Decode.parse_enum(
                    bytes,
                    TransitRealtime.TripUpdate.StopTimeUpdate.ScheduleRelationship
                  )

                {[schedule_relationship: value], rest}

              {6, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   stop_time_properties:
                     Protox.MergeMessage.merge(
                       msg.stop_time_properties,
                       TransitRealtime.TripUpdate.StopTimeUpdate.StopTimeProperties.decode!(
                         delimited
                       )
                     )
                 ], rest}

              {7, _, bytes} ->
                {value, rest} =
                  Protox.Decode.parse_enum(bytes, TransitRealtime.VehiclePosition.OccupancyStatus)

                {[departure_occupancy_status: value], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TripUpdate.StopTimeUpdate,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:stop_sequence, {:scalar, 0}, :uint32},
          2 => {:arrival, {:scalar, nil}, {:message, TransitRealtime.TripUpdate.StopTimeEvent}},
          3 => {:departure, {:scalar, nil}, {:message, TransitRealtime.TripUpdate.StopTimeEvent}},
          4 => {:stop_id, {:scalar, ""}, :string},
          5 =>
            {:schedule_relationship, {:scalar, :SCHEDULED},
             {:enum, TransitRealtime.TripUpdate.StopTimeUpdate.ScheduleRelationship}},
          6 =>
            {:stop_time_properties, {:scalar, nil},
             {:message, TransitRealtime.TripUpdate.StopTimeUpdate.StopTimeProperties}},
          7 =>
            {:departure_occupancy_status, {:scalar, :EMPTY},
             {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          arrival: {2, {:scalar, nil}, {:message, TransitRealtime.TripUpdate.StopTimeEvent}},
          departure: {3, {:scalar, nil}, {:message, TransitRealtime.TripUpdate.StopTimeEvent}},
          departure_occupancy_status:
            {7, {:scalar, :EMPTY}, {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}},
          schedule_relationship:
            {5, {:scalar, :SCHEDULED},
             {:enum, TransitRealtime.TripUpdate.StopTimeUpdate.ScheduleRelationship}},
          stop_id: {4, {:scalar, ""}, :string},
          stop_sequence: {1, {:scalar, 0}, :uint32},
          stop_time_properties:
            {6, {:scalar, nil},
             {:message, TransitRealtime.TripUpdate.StopTimeUpdate.StopTimeProperties}}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "stopSequence",
            kind: {:scalar, 0},
            label: :optional,
            name: :stop_sequence,
            tag: 1,
            type: :uint32
          },
          %{
            __struct__: Protox.Field,
            json_name: "arrival",
            kind: {:scalar, nil},
            label: :optional,
            name: :arrival,
            tag: 2,
            type: {:message, TransitRealtime.TripUpdate.StopTimeEvent}
          },
          %{
            __struct__: Protox.Field,
            json_name: "departure",
            kind: {:scalar, nil},
            label: :optional,
            name: :departure,
            tag: 3,
            type: {:message, TransitRealtime.TripUpdate.StopTimeEvent}
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopId",
            kind: {:scalar, ""},
            label: :optional,
            name: :stop_id,
            tag: 4,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "scheduleRelationship",
            kind: {:scalar, :SCHEDULED},
            label: :optional,
            name: :schedule_relationship,
            tag: 5,
            type: {:enum, TransitRealtime.TripUpdate.StopTimeUpdate.ScheduleRelationship}
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopTimeProperties",
            kind: {:scalar, nil},
            label: :optional,
            name: :stop_time_properties,
            tag: 6,
            type: {:message, TransitRealtime.TripUpdate.StopTimeUpdate.StopTimeProperties}
          },
          %{
            __struct__: Protox.Field,
            json_name: "departureOccupancyStatus",
            kind: {:scalar, :EMPTY},
            label: :optional,
            name: :departure_occupancy_status,
            tag: 7,
            type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:stop_sequence) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :stop_sequence,
               tag: 1,
               type: :uint32
             }}
          end

          def field_def("stopSequence") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :stop_sequence,
               tag: 1,
               type: :uint32
             }}
          end

          def field_def("stop_sequence") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :stop_sequence,
               tag: 1,
               type: :uint32
             }}
          end
        ),
        (
          def field_def(:arrival) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "arrival",
               kind: {:scalar, nil},
               label: :optional,
               name: :arrival,
               tag: 2,
               type: {:message, TransitRealtime.TripUpdate.StopTimeEvent}
             }}
          end

          def field_def("arrival") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "arrival",
               kind: {:scalar, nil},
               label: :optional,
               name: :arrival,
               tag: 2,
               type: {:message, TransitRealtime.TripUpdate.StopTimeEvent}
             }}
          end

          []
        ),
        (
          def field_def(:departure) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "departure",
               kind: {:scalar, nil},
               label: :optional,
               name: :departure,
               tag: 3,
               type: {:message, TransitRealtime.TripUpdate.StopTimeEvent}
             }}
          end

          def field_def("departure") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "departure",
               kind: {:scalar, nil},
               label: :optional,
               name: :departure,
               tag: 3,
               type: {:message, TransitRealtime.TripUpdate.StopTimeEvent}
             }}
          end

          []
        ),
        (
          def field_def(:stop_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 4,
               type: :string
             }}
          end

          def field_def("stopId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 4,
               type: :string
             }}
          end

          def field_def("stop_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 4,
               type: :string
             }}
          end
        ),
        (
          def field_def(:schedule_relationship) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "scheduleRelationship",
               kind: {:scalar, :SCHEDULED},
               label: :optional,
               name: :schedule_relationship,
               tag: 5,
               type: {:enum, TransitRealtime.TripUpdate.StopTimeUpdate.ScheduleRelationship}
             }}
          end

          def field_def("scheduleRelationship") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "scheduleRelationship",
               kind: {:scalar, :SCHEDULED},
               label: :optional,
               name: :schedule_relationship,
               tag: 5,
               type: {:enum, TransitRealtime.TripUpdate.StopTimeUpdate.ScheduleRelationship}
             }}
          end

          def field_def("schedule_relationship") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "scheduleRelationship",
               kind: {:scalar, :SCHEDULED},
               label: :optional,
               name: :schedule_relationship,
               tag: 5,
               type: {:enum, TransitRealtime.TripUpdate.StopTimeUpdate.ScheduleRelationship}
             }}
          end
        ),
        (
          def field_def(:stop_time_properties) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopTimeProperties",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_time_properties,
               tag: 6,
               type: {:message, TransitRealtime.TripUpdate.StopTimeUpdate.StopTimeProperties}
             }}
          end

          def field_def("stopTimeProperties") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopTimeProperties",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_time_properties,
               tag: 6,
               type: {:message, TransitRealtime.TripUpdate.StopTimeUpdate.StopTimeProperties}
             }}
          end

          def field_def("stop_time_properties") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopTimeProperties",
               kind: {:scalar, nil},
               label: :optional,
               name: :stop_time_properties,
               tag: 6,
               type: {:message, TransitRealtime.TripUpdate.StopTimeUpdate.StopTimeProperties}
             }}
          end
        ),
        (
          def field_def(:departure_occupancy_status) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "departureOccupancyStatus",
               kind: {:scalar, :EMPTY},
               label: :optional,
               name: :departure_occupancy_status,
               tag: 7,
               type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
             }}
          end

          def field_def("departureOccupancyStatus") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "departureOccupancyStatus",
               kind: {:scalar, :EMPTY},
               label: :optional,
               name: :departure_occupancy_status,
               tag: 7,
               type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
             }}
          end

          def field_def("departure_occupancy_status") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "departureOccupancyStatus",
               kind: {:scalar, :EMPTY},
               label: :optional,
               name: :departure_occupancy_status,
               tag: 7,
               type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:stop_sequence) do
        {:ok, 0}
      end,
      def default(:arrival) do
        {:ok, nil}
      end,
      def default(:departure) do
        {:ok, nil}
      end,
      def default(:stop_id) do
        {:ok, ""}
      end,
      def default(:schedule_relationship) do
        {:ok, :SCHEDULED}
      end,
      def default(:stop_time_properties) do
        {:ok, nil}
      end,
      def default(:departure_occupancy_status) do
        {:ok, :EMPTY}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TripUpdate.StopTimeUpdate.StopTimeProperties do
    @moduledoc false
    defstruct assigned_stop_id: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          [] |> encode_assigned_stop_id(msg) |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_assigned_stop_id(acc, msg) do
          try do
            case msg.assigned_stop_id do
              nil -> acc
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.assigned_stop_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:assigned_stop_id, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(
              bytes,
              struct(TransitRealtime.TripUpdate.StopTimeUpdate.StopTimeProperties)
            )
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[assigned_stop_id: Protox.Decode.validate_string!(delimited)], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TripUpdate.StopTimeUpdate.StopTimeProperties,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{1 => {:assigned_stop_id, {:scalar, ""}, :string}}
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{assigned_stop_id: {1, {:scalar, ""}, :string}}
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "assignedStopId",
            kind: {:scalar, ""},
            label: :optional,
            name: :assigned_stop_id,
            tag: 1,
            type: :string
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:assigned_stop_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "assignedStopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :assigned_stop_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("assignedStopId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "assignedStopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :assigned_stop_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("assigned_stop_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "assignedStopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :assigned_stop_id,
               tag: 1,
               type: :string
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:assigned_stop_id) do
        {:ok, ""}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.TripUpdate.TripProperties do
    @moduledoc false
    defstruct trip_id: nil, start_date: nil, start_time: nil, shape_id: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_trip_id(msg)
          |> encode_start_date(msg)
          |> encode_start_time(msg)
          |> encode_shape_id(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_trip_id(acc, msg) do
          try do
            case msg.trip_id do
              nil -> acc
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.trip_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:trip_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_start_date(acc, msg) do
          try do
            case msg.start_date do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.start_date)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:start_date, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_start_time(acc, msg) do
          try do
            case msg.start_time do
              nil -> acc
              _ -> [acc, "\x1A", Protox.Encode.encode_string(msg.start_time)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:start_time, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_shape_id(acc, msg) do
          try do
            case msg.shape_id do
              nil -> acc
              _ -> [acc, "\"", Protox.Encode.encode_string(msg.shape_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:shape_id, "invalid field value"), __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.TripUpdate.TripProperties))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[trip_id: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[start_date: Protox.Decode.validate_string!(delimited)], rest}

              {3, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[start_time: Protox.Decode.validate_string!(delimited)], rest}

              {4, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[shape_id: Protox.Decode.validate_string!(delimited)], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.TripUpdate.TripProperties,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:trip_id, {:scalar, ""}, :string},
          2 => {:start_date, {:scalar, ""}, :string},
          3 => {:start_time, {:scalar, ""}, :string},
          4 => {:shape_id, {:scalar, ""}, :string}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          shape_id: {4, {:scalar, ""}, :string},
          start_date: {2, {:scalar, ""}, :string},
          start_time: {3, {:scalar, ""}, :string},
          trip_id: {1, {:scalar, ""}, :string}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "tripId",
            kind: {:scalar, ""},
            label: :optional,
            name: :trip_id,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "startDate",
            kind: {:scalar, ""},
            label: :optional,
            name: :start_date,
            tag: 2,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "startTime",
            kind: {:scalar, ""},
            label: :optional,
            name: :start_time,
            tag: 3,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "shapeId",
            kind: {:scalar, ""},
            label: :optional,
            name: :shape_id,
            tag: 4,
            type: :string
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:trip_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripId",
               kind: {:scalar, ""},
               label: :optional,
               name: :trip_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("tripId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripId",
               kind: {:scalar, ""},
               label: :optional,
               name: :trip_id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("trip_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "tripId",
               kind: {:scalar, ""},
               label: :optional,
               name: :trip_id,
               tag: 1,
               type: :string
             }}
          end
        ),
        (
          def field_def(:start_date) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startDate",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_date,
               tag: 2,
               type: :string
             }}
          end

          def field_def("startDate") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startDate",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_date,
               tag: 2,
               type: :string
             }}
          end

          def field_def("start_date") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startDate",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_date,
               tag: 2,
               type: :string
             }}
          end
        ),
        (
          def field_def(:start_time) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTime",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_time,
               tag: 3,
               type: :string
             }}
          end

          def field_def("startTime") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTime",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_time,
               tag: 3,
               type: :string
             }}
          end

          def field_def("start_time") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "startTime",
               kind: {:scalar, ""},
               label: :optional,
               name: :start_time,
               tag: 3,
               type: :string
             }}
          end
        ),
        (
          def field_def(:shape_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "shapeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :shape_id,
               tag: 4,
               type: :string
             }}
          end

          def field_def("shapeId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "shapeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :shape_id,
               tag: 4,
               type: :string
             }}
          end

          def field_def("shape_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "shapeId",
               kind: {:scalar, ""},
               label: :optional,
               name: :shape_id,
               tag: 4,
               type: :string
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:trip_id) do
        {:ok, ""}
      end,
      def default(:start_date) do
        {:ok, ""}
      end,
      def default(:start_time) do
        {:ok, ""}
      end,
      def default(:shape_id) do
        {:ok, ""}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.VehicleDescriptor do
    @moduledoc false
    defstruct id: nil, label: nil, license_plate: nil, wheelchair_accessible: nil, __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_id(msg)
          |> encode_label(msg)
          |> encode_license_plate(msg)
          |> encode_wheelchair_accessible(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_id(acc, msg) do
          try do
            case msg.id do
              nil -> acc
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_label(acc, msg) do
          try do
            case msg.label do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.label)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:label, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_license_plate(acc, msg) do
          try do
            case msg.license_plate do
              nil -> acc
              _ -> [acc, "\x1A", Protox.Encode.encode_string(msg.license_plate)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:license_plate, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_wheelchair_accessible(acc, msg) do
          try do
            case msg.wheelchair_accessible do
              nil ->
                acc

              _ ->
                [
                  acc,
                  " ",
                  msg.wheelchair_accessible
                  |> TransitRealtime.VehicleDescriptor.WheelchairAccessible.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:wheelchair_accessible, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.VehicleDescriptor))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[id: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[label: Protox.Decode.validate_string!(delimited)], rest}

              {3, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[license_plate: Protox.Decode.validate_string!(delimited)], rest}

              {4, _, bytes} ->
                {value, rest} =
                  Protox.Decode.parse_enum(
                    bytes,
                    TransitRealtime.VehicleDescriptor.WheelchairAccessible
                  )

                {[wheelchair_accessible: value], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.VehicleDescriptor,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:id, {:scalar, ""}, :string},
          2 => {:label, {:scalar, ""}, :string},
          3 => {:license_plate, {:scalar, ""}, :string},
          4 =>
            {:wheelchair_accessible, {:scalar, :NO_VALUE},
             {:enum, TransitRealtime.VehicleDescriptor.WheelchairAccessible}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          id: {1, {:scalar, ""}, :string},
          label: {2, {:scalar, ""}, :string},
          license_plate: {3, {:scalar, ""}, :string},
          wheelchair_accessible:
            {4, {:scalar, :NO_VALUE},
             {:enum, TransitRealtime.VehicleDescriptor.WheelchairAccessible}}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "id",
            kind: {:scalar, ""},
            label: :optional,
            name: :id,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "label",
            kind: {:scalar, ""},
            label: :optional,
            name: :label,
            tag: 2,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "licensePlate",
            kind: {:scalar, ""},
            label: :optional,
            name: :license_plate,
            tag: 3,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "wheelchairAccessible",
            kind: {:scalar, :NO_VALUE},
            label: :optional,
            name: :wheelchair_accessible,
            tag: 4,
            type: {:enum, TransitRealtime.VehicleDescriptor.WheelchairAccessible}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "id",
               kind: {:scalar, ""},
               label: :optional,
               name: :id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "id",
               kind: {:scalar, ""},
               label: :optional,
               name: :id,
               tag: 1,
               type: :string
             }}
          end

          []
        ),
        (
          def field_def(:label) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "label",
               kind: {:scalar, ""},
               label: :optional,
               name: :label,
               tag: 2,
               type: :string
             }}
          end

          def field_def("label") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "label",
               kind: {:scalar, ""},
               label: :optional,
               name: :label,
               tag: 2,
               type: :string
             }}
          end

          []
        ),
        (
          def field_def(:license_plate) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "licensePlate",
               kind: {:scalar, ""},
               label: :optional,
               name: :license_plate,
               tag: 3,
               type: :string
             }}
          end

          def field_def("licensePlate") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "licensePlate",
               kind: {:scalar, ""},
               label: :optional,
               name: :license_plate,
               tag: 3,
               type: :string
             }}
          end

          def field_def("license_plate") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "licensePlate",
               kind: {:scalar, ""},
               label: :optional,
               name: :license_plate,
               tag: 3,
               type: :string
             }}
          end
        ),
        (
          def field_def(:wheelchair_accessible) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "wheelchairAccessible",
               kind: {:scalar, :NO_VALUE},
               label: :optional,
               name: :wheelchair_accessible,
               tag: 4,
               type: {:enum, TransitRealtime.VehicleDescriptor.WheelchairAccessible}
             }}
          end

          def field_def("wheelchairAccessible") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "wheelchairAccessible",
               kind: {:scalar, :NO_VALUE},
               label: :optional,
               name: :wheelchair_accessible,
               tag: 4,
               type: {:enum, TransitRealtime.VehicleDescriptor.WheelchairAccessible}
             }}
          end

          def field_def("wheelchair_accessible") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "wheelchairAccessible",
               kind: {:scalar, :NO_VALUE},
               label: :optional,
               name: :wheelchair_accessible,
               tag: 4,
               type: {:enum, TransitRealtime.VehicleDescriptor.WheelchairAccessible}
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:id) do
        {:ok, ""}
      end,
      def default(:label) do
        {:ok, ""}
      end,
      def default(:license_plate) do
        {:ok, ""}
      end,
      def default(:wheelchair_accessible) do
        {:ok, :NO_VALUE}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.VehiclePosition do
    @moduledoc false
    defstruct trip: nil,
              position: nil,
              current_stop_sequence: nil,
              current_status: nil,
              timestamp: nil,
              congestion_level: nil,
              stop_id: nil,
              vehicle: nil,
              occupancy_status: nil,
              occupancy_percentage: nil,
              multi_carriage_details: [],
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_trip(msg)
          |> encode_position(msg)
          |> encode_current_stop_sequence(msg)
          |> encode_current_status(msg)
          |> encode_timestamp(msg)
          |> encode_congestion_level(msg)
          |> encode_stop_id(msg)
          |> encode_vehicle(msg)
          |> encode_occupancy_status(msg)
          |> encode_occupancy_percentage(msg)
          |> encode_multi_carriage_details(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_trip(acc, msg) do
          try do
            case msg.trip do
              nil -> acc
              _ -> [acc, "\n", Protox.Encode.encode_message(msg.trip)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:trip, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_position(acc, msg) do
          try do
            case msg.position do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_message(msg.position)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:position, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_current_stop_sequence(acc, msg) do
          try do
            case msg.current_stop_sequence do
              nil -> acc
              _ -> [acc, "\x18", Protox.Encode.encode_uint32(msg.current_stop_sequence)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:current_stop_sequence, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_current_status(acc, msg) do
          try do
            case msg.current_status do
              nil ->
                acc

              _ ->
                [
                  acc,
                  " ",
                  msg.current_status
                  |> TransitRealtime.VehiclePosition.VehicleStopStatus.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:current_status, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_timestamp(acc, msg) do
          try do
            case msg.timestamp do
              nil -> acc
              _ -> [acc, "(", Protox.Encode.encode_uint64(msg.timestamp)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:timestamp, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_congestion_level(acc, msg) do
          try do
            case msg.congestion_level do
              nil ->
                acc

              _ ->
                [
                  acc,
                  "0",
                  msg.congestion_level
                  |> TransitRealtime.VehiclePosition.CongestionLevel.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:congestion_level, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_stop_id(acc, msg) do
          try do
            case msg.stop_id do
              nil -> acc
              _ -> [acc, ":", Protox.Encode.encode_string(msg.stop_id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:stop_id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_vehicle(acc, msg) do
          try do
            case msg.vehicle do
              nil -> acc
              _ -> [acc, "B", Protox.Encode.encode_message(msg.vehicle)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:vehicle, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_occupancy_status(acc, msg) do
          try do
            case msg.occupancy_status do
              nil ->
                acc

              _ ->
                [
                  acc,
                  "H",
                  msg.occupancy_status
                  |> TransitRealtime.VehiclePosition.OccupancyStatus.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:occupancy_status, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_occupancy_percentage(acc, msg) do
          try do
            case msg.occupancy_percentage do
              nil -> acc
              _ -> [acc, "P", Protox.Encode.encode_uint32(msg.occupancy_percentage)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:occupancy_percentage, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_multi_carriage_details(acc, msg) do
          try do
            case msg.multi_carriage_details do
              [] ->
                acc

              values ->
                [
                  acc,
                  Enum.reduce(values, [], fn value, acc ->
                    [acc, "Z", Protox.Encode.encode_message(value)]
                  end)
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:multi_carriage_details, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.VehiclePosition))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   trip:
                     Protox.MergeMessage.merge(
                       msg.trip,
                       TransitRealtime.TripDescriptor.decode!(delimited)
                     )
                 ], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   position:
                     Protox.MergeMessage.merge(
                       msg.position,
                       TransitRealtime.Position.decode!(delimited)
                     )
                 ], rest}

              {3, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint32(bytes)
                {[current_stop_sequence: value], rest}

              {4, _, bytes} ->
                {value, rest} =
                  Protox.Decode.parse_enum(
                    bytes,
                    TransitRealtime.VehiclePosition.VehicleStopStatus
                  )

                {[current_status: value], rest}

              {5, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint64(bytes)
                {[timestamp: value], rest}

              {6, _, bytes} ->
                {value, rest} =
                  Protox.Decode.parse_enum(bytes, TransitRealtime.VehiclePosition.CongestionLevel)

                {[congestion_level: value], rest}

              {7, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[stop_id: Protox.Decode.validate_string!(delimited)], rest}

              {8, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   vehicle:
                     Protox.MergeMessage.merge(
                       msg.vehicle,
                       TransitRealtime.VehicleDescriptor.decode!(delimited)
                     )
                 ], rest}

              {9, _, bytes} ->
                {value, rest} =
                  Protox.Decode.parse_enum(bytes, TransitRealtime.VehiclePosition.OccupancyStatus)

                {[occupancy_status: value], rest}

              {10, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint32(bytes)
                {[occupancy_percentage: value], rest}

              {11, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)

                {[
                   multi_carriage_details:
                     msg.multi_carriage_details ++
                       [TransitRealtime.VehiclePosition.CarriageDetails.decode!(delimited)]
                 ], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.VehiclePosition,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:trip, {:scalar, nil}, {:message, TransitRealtime.TripDescriptor}},
          2 => {:position, {:scalar, nil}, {:message, TransitRealtime.Position}},
          3 => {:current_stop_sequence, {:scalar, 0}, :uint32},
          4 =>
            {:current_status, {:scalar, :IN_TRANSIT_TO},
             {:enum, TransitRealtime.VehiclePosition.VehicleStopStatus}},
          5 => {:timestamp, {:scalar, 0}, :uint64},
          6 =>
            {:congestion_level, {:scalar, :UNKNOWN_CONGESTION_LEVEL},
             {:enum, TransitRealtime.VehiclePosition.CongestionLevel}},
          7 => {:stop_id, {:scalar, ""}, :string},
          8 => {:vehicle, {:scalar, nil}, {:message, TransitRealtime.VehicleDescriptor}},
          9 =>
            {:occupancy_status, {:scalar, :EMPTY},
             {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}},
          10 => {:occupancy_percentage, {:scalar, 0}, :uint32},
          11 =>
            {:multi_carriage_details, :unpacked,
             {:message, TransitRealtime.VehiclePosition.CarriageDetails}}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          congestion_level:
            {6, {:scalar, :UNKNOWN_CONGESTION_LEVEL},
             {:enum, TransitRealtime.VehiclePosition.CongestionLevel}},
          current_status:
            {4, {:scalar, :IN_TRANSIT_TO},
             {:enum, TransitRealtime.VehiclePosition.VehicleStopStatus}},
          current_stop_sequence: {3, {:scalar, 0}, :uint32},
          multi_carriage_details:
            {11, :unpacked, {:message, TransitRealtime.VehiclePosition.CarriageDetails}},
          occupancy_percentage: {10, {:scalar, 0}, :uint32},
          occupancy_status:
            {9, {:scalar, :EMPTY}, {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}},
          position: {2, {:scalar, nil}, {:message, TransitRealtime.Position}},
          stop_id: {7, {:scalar, ""}, :string},
          timestamp: {5, {:scalar, 0}, :uint64},
          trip: {1, {:scalar, nil}, {:message, TransitRealtime.TripDescriptor}},
          vehicle: {8, {:scalar, nil}, {:message, TransitRealtime.VehicleDescriptor}}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "trip",
            kind: {:scalar, nil},
            label: :optional,
            name: :trip,
            tag: 1,
            type: {:message, TransitRealtime.TripDescriptor}
          },
          %{
            __struct__: Protox.Field,
            json_name: "position",
            kind: {:scalar, nil},
            label: :optional,
            name: :position,
            tag: 2,
            type: {:message, TransitRealtime.Position}
          },
          %{
            __struct__: Protox.Field,
            json_name: "currentStopSequence",
            kind: {:scalar, 0},
            label: :optional,
            name: :current_stop_sequence,
            tag: 3,
            type: :uint32
          },
          %{
            __struct__: Protox.Field,
            json_name: "currentStatus",
            kind: {:scalar, :IN_TRANSIT_TO},
            label: :optional,
            name: :current_status,
            tag: 4,
            type: {:enum, TransitRealtime.VehiclePosition.VehicleStopStatus}
          },
          %{
            __struct__: Protox.Field,
            json_name: "timestamp",
            kind: {:scalar, 0},
            label: :optional,
            name: :timestamp,
            tag: 5,
            type: :uint64
          },
          %{
            __struct__: Protox.Field,
            json_name: "congestionLevel",
            kind: {:scalar, :UNKNOWN_CONGESTION_LEVEL},
            label: :optional,
            name: :congestion_level,
            tag: 6,
            type: {:enum, TransitRealtime.VehiclePosition.CongestionLevel}
          },
          %{
            __struct__: Protox.Field,
            json_name: "stopId",
            kind: {:scalar, ""},
            label: :optional,
            name: :stop_id,
            tag: 7,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "vehicle",
            kind: {:scalar, nil},
            label: :optional,
            name: :vehicle,
            tag: 8,
            type: {:message, TransitRealtime.VehicleDescriptor}
          },
          %{
            __struct__: Protox.Field,
            json_name: "occupancyStatus",
            kind: {:scalar, :EMPTY},
            label: :optional,
            name: :occupancy_status,
            tag: 9,
            type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
          },
          %{
            __struct__: Protox.Field,
            json_name: "occupancyPercentage",
            kind: {:scalar, 0},
            label: :optional,
            name: :occupancy_percentage,
            tag: 10,
            type: :uint32
          },
          %{
            __struct__: Protox.Field,
            json_name: "multiCarriageDetails",
            kind: :unpacked,
            label: :repeated,
            name: :multi_carriage_details,
            tag: 11,
            type: {:message, TransitRealtime.VehiclePosition.CarriageDetails}
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:trip) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "trip",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip,
               tag: 1,
               type: {:message, TransitRealtime.TripDescriptor}
             }}
          end

          def field_def("trip") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "trip",
               kind: {:scalar, nil},
               label: :optional,
               name: :trip,
               tag: 1,
               type: {:message, TransitRealtime.TripDescriptor}
             }}
          end

          []
        ),
        (
          def field_def(:position) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "position",
               kind: {:scalar, nil},
               label: :optional,
               name: :position,
               tag: 2,
               type: {:message, TransitRealtime.Position}
             }}
          end

          def field_def("position") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "position",
               kind: {:scalar, nil},
               label: :optional,
               name: :position,
               tag: 2,
               type: {:message, TransitRealtime.Position}
             }}
          end

          []
        ),
        (
          def field_def(:current_stop_sequence) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "currentStopSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :current_stop_sequence,
               tag: 3,
               type: :uint32
             }}
          end

          def field_def("currentStopSequence") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "currentStopSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :current_stop_sequence,
               tag: 3,
               type: :uint32
             }}
          end

          def field_def("current_stop_sequence") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "currentStopSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :current_stop_sequence,
               tag: 3,
               type: :uint32
             }}
          end
        ),
        (
          def field_def(:current_status) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "currentStatus",
               kind: {:scalar, :IN_TRANSIT_TO},
               label: :optional,
               name: :current_status,
               tag: 4,
               type: {:enum, TransitRealtime.VehiclePosition.VehicleStopStatus}
             }}
          end

          def field_def("currentStatus") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "currentStatus",
               kind: {:scalar, :IN_TRANSIT_TO},
               label: :optional,
               name: :current_status,
               tag: 4,
               type: {:enum, TransitRealtime.VehiclePosition.VehicleStopStatus}
             }}
          end

          def field_def("current_status") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "currentStatus",
               kind: {:scalar, :IN_TRANSIT_TO},
               label: :optional,
               name: :current_status,
               tag: 4,
               type: {:enum, TransitRealtime.VehiclePosition.VehicleStopStatus}
             }}
          end
        ),
        (
          def field_def(:timestamp) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "timestamp",
               kind: {:scalar, 0},
               label: :optional,
               name: :timestamp,
               tag: 5,
               type: :uint64
             }}
          end

          def field_def("timestamp") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "timestamp",
               kind: {:scalar, 0},
               label: :optional,
               name: :timestamp,
               tag: 5,
               type: :uint64
             }}
          end

          []
        ),
        (
          def field_def(:congestion_level) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "congestionLevel",
               kind: {:scalar, :UNKNOWN_CONGESTION_LEVEL},
               label: :optional,
               name: :congestion_level,
               tag: 6,
               type: {:enum, TransitRealtime.VehiclePosition.CongestionLevel}
             }}
          end

          def field_def("congestionLevel") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "congestionLevel",
               kind: {:scalar, :UNKNOWN_CONGESTION_LEVEL},
               label: :optional,
               name: :congestion_level,
               tag: 6,
               type: {:enum, TransitRealtime.VehiclePosition.CongestionLevel}
             }}
          end

          def field_def("congestion_level") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "congestionLevel",
               kind: {:scalar, :UNKNOWN_CONGESTION_LEVEL},
               label: :optional,
               name: :congestion_level,
               tag: 6,
               type: {:enum, TransitRealtime.VehiclePosition.CongestionLevel}
             }}
          end
        ),
        (
          def field_def(:stop_id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 7,
               type: :string
             }}
          end

          def field_def("stopId") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 7,
               type: :string
             }}
          end

          def field_def("stop_id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "stopId",
               kind: {:scalar, ""},
               label: :optional,
               name: :stop_id,
               tag: 7,
               type: :string
             }}
          end
        ),
        (
          def field_def(:vehicle) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "vehicle",
               kind: {:scalar, nil},
               label: :optional,
               name: :vehicle,
               tag: 8,
               type: {:message, TransitRealtime.VehicleDescriptor}
             }}
          end

          def field_def("vehicle") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "vehicle",
               kind: {:scalar, nil},
               label: :optional,
               name: :vehicle,
               tag: 8,
               type: {:message, TransitRealtime.VehicleDescriptor}
             }}
          end

          []
        ),
        (
          def field_def(:occupancy_status) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyStatus",
               kind: {:scalar, :EMPTY},
               label: :optional,
               name: :occupancy_status,
               tag: 9,
               type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
             }}
          end

          def field_def("occupancyStatus") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyStatus",
               kind: {:scalar, :EMPTY},
               label: :optional,
               name: :occupancy_status,
               tag: 9,
               type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
             }}
          end

          def field_def("occupancy_status") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyStatus",
               kind: {:scalar, :EMPTY},
               label: :optional,
               name: :occupancy_status,
               tag: 9,
               type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
             }}
          end
        ),
        (
          def field_def(:occupancy_percentage) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyPercentage",
               kind: {:scalar, 0},
               label: :optional,
               name: :occupancy_percentage,
               tag: 10,
               type: :uint32
             }}
          end

          def field_def("occupancyPercentage") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyPercentage",
               kind: {:scalar, 0},
               label: :optional,
               name: :occupancy_percentage,
               tag: 10,
               type: :uint32
             }}
          end

          def field_def("occupancy_percentage") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyPercentage",
               kind: {:scalar, 0},
               label: :optional,
               name: :occupancy_percentage,
               tag: 10,
               type: :uint32
             }}
          end
        ),
        (
          def field_def(:multi_carriage_details) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "multiCarriageDetails",
               kind: :unpacked,
               label: :repeated,
               name: :multi_carriage_details,
               tag: 11,
               type: {:message, TransitRealtime.VehiclePosition.CarriageDetails}
             }}
          end

          def field_def("multiCarriageDetails") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "multiCarriageDetails",
               kind: :unpacked,
               label: :repeated,
               name: :multi_carriage_details,
               tag: 11,
               type: {:message, TransitRealtime.VehiclePosition.CarriageDetails}
             }}
          end

          def field_def("multi_carriage_details") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "multiCarriageDetails",
               kind: :unpacked,
               label: :repeated,
               name: :multi_carriage_details,
               tag: 11,
               type: {:message, TransitRealtime.VehiclePosition.CarriageDetails}
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:trip) do
        {:ok, nil}
      end,
      def default(:position) do
        {:ok, nil}
      end,
      def default(:current_stop_sequence) do
        {:ok, 0}
      end,
      def default(:current_status) do
        {:ok, :IN_TRANSIT_TO}
      end,
      def default(:timestamp) do
        {:ok, 0}
      end,
      def default(:congestion_level) do
        {:ok, :UNKNOWN_CONGESTION_LEVEL}
      end,
      def default(:stop_id) do
        {:ok, ""}
      end,
      def default(:vehicle) do
        {:ok, nil}
      end,
      def default(:occupancy_status) do
        {:ok, :EMPTY}
      end,
      def default(:occupancy_percentage) do
        {:ok, 0}
      end,
      def default(:multi_carriage_details) do
        {:error, :no_default_value}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end,
  defmodule TransitRealtime.VehiclePosition.CarriageDetails do
    @moduledoc false
    defstruct id: nil,
              label: nil,
              occupancy_status: nil,
              occupancy_percentage: nil,
              carriage_sequence: nil,
              __uf__: []

    (
      (
        @spec encode(struct) :: {:ok, iodata} | {:error, any}
        def encode(msg) do
          try do
            {:ok, encode!(msg)}
          rescue
            e in [Protox.EncodingError, Protox.RequiredFieldsError] -> {:error, e}
          end
        end

        @spec encode!(struct) :: iodata | no_return
        def encode!(msg) do
          []
          |> encode_id(msg)
          |> encode_label(msg)
          |> encode_occupancy_status(msg)
          |> encode_occupancy_percentage(msg)
          |> encode_carriage_sequence(msg)
          |> encode_unknown_fields(msg)
        end
      )

      []

      [
        defp encode_id(acc, msg) do
          try do
            case msg.id do
              nil -> acc
              _ -> [acc, "\n", Protox.Encode.encode_string(msg.id)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:id, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_label(acc, msg) do
          try do
            case msg.label do
              nil -> acc
              _ -> [acc, "\x12", Protox.Encode.encode_string(msg.label)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:label, "invalid field value"), __STACKTRACE__
          end
        end,
        defp encode_occupancy_status(acc, msg) do
          try do
            case msg.occupancy_status do
              nil ->
                acc

              _ ->
                [
                  acc,
                  "\x18",
                  msg.occupancy_status
                  |> TransitRealtime.VehiclePosition.OccupancyStatus.encode()
                  |> Protox.Encode.encode_enum()
                ]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:occupancy_status, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_occupancy_percentage(acc, msg) do
          try do
            case msg.occupancy_percentage do
              nil -> acc
              _ -> [acc, " ", Protox.Encode.encode_int32(msg.occupancy_percentage)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:occupancy_percentage, "invalid field value"),
                      __STACKTRACE__
          end
        end,
        defp encode_carriage_sequence(acc, msg) do
          try do
            case msg.carriage_sequence do
              nil -> acc
              _ -> [acc, "(", Protox.Encode.encode_uint32(msg.carriage_sequence)]
            end
          rescue
            ArgumentError ->
              reraise Protox.EncodingError.new(:carriage_sequence, "invalid field value"),
                      __STACKTRACE__
          end
        end
      ]

      defp encode_unknown_fields(acc, msg) do
        Enum.reduce(msg.__struct__.unknown_fields(msg), acc, fn {tag, wire_type, bytes}, acc ->
          case wire_type do
            0 ->
              [acc, Protox.Encode.make_key_bytes(tag, :int32), bytes]

            1 ->
              [acc, Protox.Encode.make_key_bytes(tag, :double), bytes]

            2 ->
              len_bytes = bytes |> byte_size() |> Protox.Varint.encode()
              [acc, Protox.Encode.make_key_bytes(tag, :packed), len_bytes, bytes]

            5 ->
              [acc, Protox.Encode.make_key_bytes(tag, :float), bytes]
          end
        end)
      end
    )

    (
      (
        @spec decode(binary) :: {:ok, struct} | {:error, any}
        def decode(bytes) do
          try do
            {:ok, decode!(bytes)}
          rescue
            e in [Protox.DecodingError, Protox.IllegalTagError, Protox.RequiredFieldsError] ->
              {:error, e}
          end
        end

        (
          @spec decode!(binary) :: struct | no_return
          def decode!(bytes) do
            parse_key_value(bytes, struct(TransitRealtime.VehiclePosition.CarriageDetails))
          end
        )
      )

      (
        @spec parse_key_value(binary, struct) :: struct
        defp parse_key_value(<<>>, msg) do
          msg
        end

        defp parse_key_value(bytes, msg) do
          {field, rest} =
            case Protox.Decode.parse_key(bytes) do
              {0, _, _} ->
                raise %Protox.IllegalTagError{}

              {1, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[id: Protox.Decode.validate_string!(delimited)], rest}

              {2, _, bytes} ->
                {len, bytes} = Protox.Varint.decode(bytes)
                {delimited, rest} = Protox.Decode.parse_delimited(bytes, len)
                {[label: Protox.Decode.validate_string!(delimited)], rest}

              {3, _, bytes} ->
                {value, rest} =
                  Protox.Decode.parse_enum(bytes, TransitRealtime.VehiclePosition.OccupancyStatus)

                {[occupancy_status: value], rest}

              {4, _, bytes} ->
                {value, rest} = Protox.Decode.parse_int32(bytes)
                {[occupancy_percentage: value], rest}

              {5, _, bytes} ->
                {value, rest} = Protox.Decode.parse_uint32(bytes)
                {[carriage_sequence: value], rest}

              {tag, wire_type, rest} ->
                {value, rest} = Protox.Decode.parse_unknown(tag, wire_type, rest)

                {[
                   {msg.__struct__.unknown_fields_name(),
                    [value | msg.__struct__.unknown_fields(msg)]}
                 ], rest}
            end

          msg_updated = struct(msg, field)
          parse_key_value(rest, msg_updated)
        end
      )

      []
    )

    (
      @spec json_decode(iodata(), keyword()) :: {:ok, struct()} | {:error, any()}
      def json_decode(input, opts \\ []) do
        try do
          {:ok, json_decode!(input, opts)}
        rescue
          e in Protox.JsonDecodingError -> {:error, e}
        end
      end

      @spec json_decode!(iodata(), keyword()) :: struct() | no_return()
      def json_decode!(input, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :decode)

        Protox.JsonDecode.decode!(
          input,
          TransitRealtime.VehiclePosition.CarriageDetails,
          &json_library_wrapper.decode!(json_library, &1)
        )
      end

      @spec json_encode(struct(), keyword()) :: {:ok, iodata()} | {:error, any()}
      def json_encode(msg, opts \\ []) do
        try do
          {:ok, json_encode!(msg, opts)}
        rescue
          e in Protox.JsonEncodingError -> {:error, e}
        end
      end

      @spec json_encode!(struct(), keyword()) :: iodata() | no_return()
      def json_encode!(msg, opts \\ []) do
        {json_library_wrapper, json_library} = Protox.JsonLibrary.get_library(opts, :encode)
        Protox.JsonEncode.encode!(msg, &json_library_wrapper.encode!(json_library, &1))
      end
    )

    (
      @deprecated "Use fields_defs()/0 instead"
      @spec defs() :: %{
              required(non_neg_integer) => {atom, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs() do
        %{
          1 => {:id, {:scalar, ""}, :string},
          2 => {:label, {:scalar, ""}, :string},
          3 =>
            {:occupancy_status, {:scalar, :NO_DATA_AVAILABLE},
             {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}},
          4 => {:occupancy_percentage, {:scalar, -1}, :int32},
          5 => {:carriage_sequence, {:scalar, 0}, :uint32}
        }
      end

      @deprecated "Use fields_defs()/0 instead"
      @spec defs_by_name() :: %{
              required(atom) => {non_neg_integer, Protox.Types.kind(), Protox.Types.type()}
            }
      def defs_by_name() do
        %{
          carriage_sequence: {5, {:scalar, 0}, :uint32},
          id: {1, {:scalar, ""}, :string},
          label: {2, {:scalar, ""}, :string},
          occupancy_percentage: {4, {:scalar, -1}, :int32},
          occupancy_status:
            {3, {:scalar, :NO_DATA_AVAILABLE},
             {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}}
        }
      end
    )

    (
      @spec fields_defs() :: list(Protox.Field.t())
      def fields_defs() do
        [
          %{
            __struct__: Protox.Field,
            json_name: "id",
            kind: {:scalar, ""},
            label: :optional,
            name: :id,
            tag: 1,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "label",
            kind: {:scalar, ""},
            label: :optional,
            name: :label,
            tag: 2,
            type: :string
          },
          %{
            __struct__: Protox.Field,
            json_name: "occupancyStatus",
            kind: {:scalar, :NO_DATA_AVAILABLE},
            label: :optional,
            name: :occupancy_status,
            tag: 3,
            type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
          },
          %{
            __struct__: Protox.Field,
            json_name: "occupancyPercentage",
            kind: {:scalar, -1},
            label: :optional,
            name: :occupancy_percentage,
            tag: 4,
            type: :int32
          },
          %{
            __struct__: Protox.Field,
            json_name: "carriageSequence",
            kind: {:scalar, 0},
            label: :optional,
            name: :carriage_sequence,
            tag: 5,
            type: :uint32
          }
        ]
      end

      [
        @spec(field_def(atom) :: {:ok, Protox.Field.t()} | {:error, :no_such_field}),
        (
          def field_def(:id) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "id",
               kind: {:scalar, ""},
               label: :optional,
               name: :id,
               tag: 1,
               type: :string
             }}
          end

          def field_def("id") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "id",
               kind: {:scalar, ""},
               label: :optional,
               name: :id,
               tag: 1,
               type: :string
             }}
          end

          []
        ),
        (
          def field_def(:label) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "label",
               kind: {:scalar, ""},
               label: :optional,
               name: :label,
               tag: 2,
               type: :string
             }}
          end

          def field_def("label") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "label",
               kind: {:scalar, ""},
               label: :optional,
               name: :label,
               tag: 2,
               type: :string
             }}
          end

          []
        ),
        (
          def field_def(:occupancy_status) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyStatus",
               kind: {:scalar, :NO_DATA_AVAILABLE},
               label: :optional,
               name: :occupancy_status,
               tag: 3,
               type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
             }}
          end

          def field_def("occupancyStatus") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyStatus",
               kind: {:scalar, :NO_DATA_AVAILABLE},
               label: :optional,
               name: :occupancy_status,
               tag: 3,
               type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
             }}
          end

          def field_def("occupancy_status") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyStatus",
               kind: {:scalar, :NO_DATA_AVAILABLE},
               label: :optional,
               name: :occupancy_status,
               tag: 3,
               type: {:enum, TransitRealtime.VehiclePosition.OccupancyStatus}
             }}
          end
        ),
        (
          def field_def(:occupancy_percentage) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyPercentage",
               kind: {:scalar, -1},
               label: :optional,
               name: :occupancy_percentage,
               tag: 4,
               type: :int32
             }}
          end

          def field_def("occupancyPercentage") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyPercentage",
               kind: {:scalar, -1},
               label: :optional,
               name: :occupancy_percentage,
               tag: 4,
               type: :int32
             }}
          end

          def field_def("occupancy_percentage") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "occupancyPercentage",
               kind: {:scalar, -1},
               label: :optional,
               name: :occupancy_percentage,
               tag: 4,
               type: :int32
             }}
          end
        ),
        (
          def field_def(:carriage_sequence) do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "carriageSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :carriage_sequence,
               tag: 5,
               type: :uint32
             }}
          end

          def field_def("carriageSequence") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "carriageSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :carriage_sequence,
               tag: 5,
               type: :uint32
             }}
          end

          def field_def("carriage_sequence") do
            {:ok,
             %{
               __struct__: Protox.Field,
               json_name: "carriageSequence",
               kind: {:scalar, 0},
               label: :optional,
               name: :carriage_sequence,
               tag: 5,
               type: :uint32
             }}
          end
        ),
        def field_def(_) do
          {:error, :no_such_field}
        end
      ]
    )

    (
      @spec unknown_fields(struct) :: [{non_neg_integer, Protox.Types.tag(), binary}]
      def unknown_fields(msg) do
        msg.__uf__
      end

      @spec unknown_fields_name() :: :__uf__
      def unknown_fields_name() do
        :__uf__
      end

      @spec clear_unknown_fields(struct) :: struct
      def clear_unknown_fields(msg) do
        struct!(msg, [{unknown_fields_name(), []}])
      end
    )

    (
      @spec required_fields() :: []
      def required_fields() do
        []
      end
    )

    (
      @spec syntax() :: atom()
      def syntax() do
        :proto2
      end
    )

    [
      @spec(default(atom) :: {:ok, boolean | integer | String.t() | float} | {:error, atom}),
      def default(:id) do
        {:ok, ""}
      end,
      def default(:label) do
        {:ok, ""}
      end,
      def default(:occupancy_status) do
        {:ok, :NO_DATA_AVAILABLE}
      end,
      def default(:occupancy_percentage) do
        {:ok, -1}
      end,
      def default(:carriage_sequence) do
        {:ok, 0}
      end,
      def default(_) do
        {:error, :no_such_field}
      end
    ]

    (
      @spec file_options() :: struct()
      def file_options() do
        file_options = %{
          __struct__: Protox.Google.Protobuf.FileOptions,
          __uf__: [],
          cc_enable_arenas: nil,
          cc_generic_services: nil,
          csharp_namespace: nil,
          deprecated: nil,
          go_package: nil,
          java_generate_equals_and_hash: nil,
          java_generic_services: nil,
          java_multiple_files: nil,
          java_outer_classname: nil,
          java_package: "com.google.transit.realtime",
          java_string_check_utf8: nil,
          objc_class_prefix: nil,
          optimize_for: nil,
          php_class_prefix: nil,
          php_generic_services: nil,
          php_metadata_namespace: nil,
          php_namespace: nil,
          py_generic_services: nil,
          ruby_package: nil,
          swift_prefix: nil,
          uninterpreted_option: []
        }

        case function_exported?(Google.Protobuf.FileOptions, :decode!, 1) do
          true ->
            bytes =
              file_options
              |> Protox.Google.Protobuf.FileOptions.encode!()
              |> :binary.list_to_bin()

            apply(Google.Protobuf.FileOptions, :decode!, [bytes])

          false ->
            file_options
        end
      end
    )
  end
]
