import UIKit
import SnapKit

final class MainViewController: UIViewController {
    
    var viewModel = MainViewModel()
    
    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.register(SpecialistCell.self, forCellReuseIdentifier: SpecialistCell.cellId)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        tableView.delegate = self
        tableView.dataSource = self
        setConstrains()
    }
    
    private func setConstrains() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.leading.bottom.right.equalToSuperview()
        }
    }
    
}

//MARK: - UITableViewDataSource

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.doctors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: SpecialistCell.cellId, for: indexPath) as? SpecialistCell {
            cell.configure()
            return cell
        }
        return UITableViewCell()
    }
}

//MARK: - UITableViewDelegate

extension MainViewController: UITableViewDelegate {}
