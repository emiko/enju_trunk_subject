class EnjuSubject::SetupGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def copy_setup_files
    directory("db/fixtures", "db/fixtures/enju_subject")
    rake("enju_subject_engine:install:migrations")
  end
end
