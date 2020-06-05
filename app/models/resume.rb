class Resume < ApplicationRecord
  has_one :location

  has_many :profiles
  has_many :educations
  has_many :works
  has_many :volunteers
  has_many :skills
  has_many :languages
  has_many :interests

  def self.create_from_json!(data)
    json = JSON.parse(data)

    resume = Resume.create({
      name: json['basics']['name'],
      label: json['basics']['label'],
      email: json['basics']['email'],
      phone: json['basics']['phone'],
      summary: json['basics']['summary']
    })

    resume.save!

    location = Location.create({
      resume: resume,
      address: json['basics']['address'],
      postal_code: json['basics']['postalCode'],
      city: json['basics']['city'],
      country_code: json['basics']['countryCode'],
      region: json['basics']['region']
    })

    location.save!
    
    pcount = 0
    for pdata in json['basics']['profiles']
      pcount = pcount + 1

      profile = Profile.create({
        resume: resume,
        network: pdata['network'],
        username: pdata['username'],
        url: pdata['url'],
        icon_name: pdata['network'].downcase,
        order: pcount
      })

      profile.save!
    end

    lcount = 0
    for ldata in json['languages']
      lcount = lcount + 1

      language = Language.create({
        resume: resume,
        name: ldata['language'],
        fluency: ldata['fluency']
      })

      language.save!
    end

    rcount = 0
    for rdata in json['references']
      rcount = rcount + 1

      reference = Reference.create({
        resume: resume,
        name: rdata['name'],
        reference: rdata['reference']
      })

      reference.save!
    end

    wcount = 0
    for wdata in json['work']
      wcount = wcount + 1

      work = Work.create({
        resume: resume,
        summary: wdata['summary'],
        start_date: wdata['startDate'],
        end_date: wdata['endDate'],
        website: wdata['website'],
        position: wdata['position'],
        company: wdata['company']
      })

      work.save!

      hcount = 0
      for hdata in wdata['highlights']
        hcount = hcount + 1

        highlight = Highlight.create({
          job: work,
          description: hdata,
          order: hcount
        })

        highlight.save!
      end
    end

    vcount = 0
    for vdata in json['volunteer']
      vcount = vcount + 1

      volunteer = Volunteer.create({
        resume: resume,
        summary: vdata['summary'],
        start_date: vdata['startDate'],
        end_date: vdata['endDate'],
        website: vdata['website'],
        position: vdata['position'],
        organization: vdata['organization']
      })

      volunteer.save!

      hcount = 0
      for hdata in wdata['highlights']
        hcount = hcount + 1

        highlight = Highlight.create({
          job: volunteer,
          description: hdata,
          order: hcount
        })

        highlight.save!
      end
    end

    scount = 0
    for sdata in json['skills']
      scount = scount + 1

      skill = Skill.create({
        resume: resume,
        name: sdata['name'],
        level: sdata['startDate'],
        url: sdata['endDate'],
        order: scount
      })

      skill.save!

      kcount = 0
      for kdata in sdata['keywords']
        kcount = kcount + 1

        keyword = Keyword.create({
          owner: skill,
          name: kdata,
          order: kcount
        })

        keyword.save!
      end
    end

    icount = 0
    for idata in json['interests']
      icount = icount + 1

      interest = Interest.create({
        resume: resume,
        name: sdata['name'],
        order: icount
      })

      skill.save!

      kcount = 0
      for kdata in sdata['keywords']
        kcount = kcount + 1

        keyword = Keyword.create({
          owner: skill,
          name: kdata,
          order: kcount
        })

        keyword.save!
      end
    end

    ecount = 0
    for edata in json['education']
      ecount = ecount + 1

      education = Education.create({
        resume: resume,
        institution: edata['institution'],
        area: edata['area'],
        start_date: edata['startDate'],
        end_date: edata['endDate'],
        gpa: edata['gpa'],
        study_type: edata['studyType'],
      })

      education.save!

      ccount = 0
      for cdata in edata['courses']
        ccount = ccount + 1

        course = Course.create({
          education: education,
          name: cdata,
          order: ccount
        })

        course.save!
      end
    end

    return resume
  end
end
