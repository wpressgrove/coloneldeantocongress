class Video < Medium
  has_attached_file :file,
    styles: {
      mp4: { format: 'mp4', geometry: '1140x675#', convert_options: { input: {}, output: { vcodec: 'libx264', movflags: '+faststart', strict: :experimental } } },
#      webm: { format: 'webm', geometry: '1140x675#', convert_options: { input: {}, output: { vcodec: 'libvpx', acodec: 'libvorbis', 'cpu-used' => -10, deadline: :realtime, strict: :experimental } } },
      preview: { format: :jpg, geometry: '1140x675#', convert_options: { output: { vframes: 1, s: '1140x675', ss: '00:00:01' } } },
      thumb: { format: :jpg, geometry: '233x170#', convert_options: { output: { vframes: 1, s: '233x170', ss: '00:00:02' } } },
    }, processors: [:transcoder]
  validates_attachment_content_type :file, content_type: /\Avideo\/.*\Z/
end
