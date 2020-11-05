
@if(count($errors->all()) > 0)
    <div class="alert alert-danger" role="alert">
        <ul>

            @foreach($errors->all() as $error)
                <li><i class="fas fa-exclamation-triangle"></i> {{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<!-- div(class="alert alert-danger" role="alert") #[i(class="fas fa-exclamation-triangle")] Something is wrong, please try again-->
<!-- div(class="alert alert-success" role="alert") #[i(class="fas fa-check")]Your message was sent successfully-->
@if(session()->has('success'))
    <div class="alert alert-success" role="alert">
        <i class="fa fa-check"></i>
       {{ session('success') }}
    </div>
@endif

@if(session()->has('error'))
    <div class="alert alert-danger"  role="alert">
        <h4><i class="fas fa-exclamation-triangle"></i> {{ session('error') }}</h4>
    </div>
@endif
