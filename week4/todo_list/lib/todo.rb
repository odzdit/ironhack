class Task
    attr_reader :content, :id, :created_at
    @@current_id = 1
    @@updated_at = nil
    def initialize(content)
        @content = content
        @id = @@current_id
        @created_at = Time.now
        @updated_at = Time.now
        @@current_id += 1
    end
end