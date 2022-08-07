import UIKit
import SnapKit

class SpecialistCell: UITableViewCell {
    static let cellId = "specialistCell"
    
    private lazy var cellBackgroundView = BackgroungTableUIView()
    
    private lazy var cellImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .iconBackground
        view.layer.cornerRadius = 24
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .mainText
        label.textColor = .mainText
        return label
    }()
    
    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = .secondaryText
        label.textColor = .secondaryText
        return label
    }()
    
    private lazy var separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = .separator
        return view
    }()
    
    private lazy var appointmentsStackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: SpecialistCell.cellId)
        
        separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: .greatestFiniteMagnitude)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        titleLabel.text = "Терапевт"
        subtitleLabel.text = "3 раза в год"
    }
    
    private func setConstraints() {
        contentView.addSubview(cellBackgroundView)
        cellBackgroundView.snp.makeConstraints { make in
            make.leading.top.equalToSuperview().offset(16)
            make.trailing.bottom.equalToSuperview().offset(-16)
        }
        
        cellBackgroundView.addSubview(cellImageView)
        cellImageView.snp.makeConstraints { make in
            make.width.height.equalTo(48)
            make.leading.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(20)
        }
        
        let labelsView = UIView()
        cellBackgroundView.addSubview(labelsView)
        labelsView.addSubview(titleLabel)
        labelsView.addSubview(subtitleLabel)
        labelsView.snp.makeConstraints { make in
            make.top.equalTo(cellImageView)
            make.leading.equalTo(cellImageView.snp.trailing).offset(10)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
        }
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
        }
        
        cellBackgroundView.addSubview(separatorView)
        separatorView.snp.makeConstraints { make in
            make.top.equalTo(cellImageView.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-20)
            make.height.equalTo(1)
        }
    }
}
