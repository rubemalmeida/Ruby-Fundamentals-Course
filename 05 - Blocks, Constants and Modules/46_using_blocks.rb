$debug = true

def debug_only
    yield if $debug && block_given?
end

class Spaceship
    def initialize
        @debug_attrs = {containment_status: :ok, core_temp: 350}
    end
    def launch
        debug_only { p @debug_attrs }
    end
end

Spaceship.new.launch


def with_timing
    start = Time.now
    if block_given?
        yield
        puts "Time taken: #{Time.now - start} seconds"
    end
end

def run_operation_1
    sleep(1)
end
def run_operation_2; end
with_timing do
    run_operation_1
    run_operation_2
end
# Output: Time taken: 1.000057 seconds

class Database
    def transaction
        start_transaction
        begin
            yield
        rescue DBError => e
            rollback_transaction
            log_error e.message
            return
        end
        commit_transaction
    end
end
DB.transaction do
    # update multiple records
end
