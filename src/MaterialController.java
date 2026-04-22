@RestController
@RequestMapping("/api/materiais")
public class MaterialController {

    @Autowired
    private MaterialRepository repository;

    // GET: Listar tudo
    @GetMapping
    public List<Material> listarTodos() {
        return repository.findAll();
    }

    // GET: Filtro de Impacto (Destaque técnico: Uso de queries dinâmicas)
    @GetMapping("/impacto/{nivel}")
    public List<Material> buscarPorImpacto(@PathVariable String nivel) {
        return repository.findByImpactoAmbientalIgnoreCase(nivel);
    }

    // POST: Registro Real vindo do n8n
    @PostMapping("/duvida")
    public ResponseEntity<String> registrarDuvida(@RequestBody Interacao interacao) {
        repositoryInteracao.save(interacao);
        return ResponseEntity.ok("Dúvida registrada no banco via automação!");
    }
}
