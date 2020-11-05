<?php
/**
 * To Add New Template :-
 *       -create template static folder to the site.templates as in template_1
 *       -create views folder for your views in resources
 *       -add render function to this class (recommended) to follow this namming @renderTemplate{template_id}
 *              and build your cases for the template pages data.
 *       -add case for the new template in the index function
 */

namespace App\Http\Controllers;

use App\Models\Consultation;
use App\Models\Doctor_appointments;
use App\Models\Doctorcoupon;
use App\Models\PatientCoupon;
use App\Models\User;
use App\Models\DContact;
use App\Models\DGallery;
use App\Models\VideoLibrary;
use App\Models\DoctorDetail;
use App\Models\Blog;
use Carbon\Carbon;
use Carbon\CarbonInterval;
use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\Hash;

class TemplateController extends Controller
{

    public function __construct()
    {
//        $this->middleware(function ($request, $next) {
//            if (Auth::check()) {
//                if(Auth::user()->is_doctor) {
//                    DoctorDetail::where('doctor_id', Auth::id())
//                        ->update([
//                            'last_activity' => Carbon::now()
//                        ]);
//                }
//            }
//
//            return $next($request);
//        });
    }


    public function booking_page($link_name = 'booking')
    {

        if (empty($link_name)) {

            return redirect('/');
        }

        $doctor = User::join('doctor_details', 'users.id', '=', 'doctor_details.doctor_id')
            ->where('link_name', $link_name)->with('details')->first();
        if (!$doctor) return redirect('/');
        $template = $doctor->template_id;
        if (request()->template != '') {
            $template = request()->template;
            DoctorDetail::where('doctor_id', $doctor->doctor_id)->update([
                'template_id' => $template
            ]);

        }
        return $this->renderTemplate1($doctor->doctor_id, 'booking');


    }

    public function index($link_name, $page = 'index')
    {
        if (empty($link_name)) {
            return redirect()->route('home');
        }
        $doctor = User::join('doctor_details', 'users.id', '=', 'doctor_details.doctor_id')
            ->where('link_name', $link_name)->with('details')->first();

        if (!$doctor) return redirect()->route('home');
        $template = $doctor->template_id;
        if (request()->template != '') {
            $template = request()->template;
            DoctorDetail::where('doctor_id', $doctor->doctor_id)->update([
                'template_id' => $template
            ]);

        }
        switch ($template) {
            case 1:
                return $this->renderTemplate1($doctor->doctor_id, $page);
                break;
            case 2:
                return $this->renderTemplate2($doctor->doctor_id, $page);
                break;
            case 3:
                return $this->renderTemplate3($doctor->doctor_id, $page);
                break;
            case 4:
                return $this->renderTemplate4($doctor->doctor_id, $page);
                break;
            case 5:
                return $this->renderTemplate5($doctor->doctor_id, $page);
                break;
            case 6:
                return $this->renderTemplate6($doctor->doctor_id, $page);
                break;
            default:
                return $this->renderTemplate1($doctor->doctor_id, $page);
        }

        return redirect()->route('home');
    }

    public function renderTemplate1($doctor_id, $page = 'home')
    {
        switch ($page) {
            case 'index':
                $data = $this->getIndexData($doctor_id);
                break;
            case 'about':
                $data = $this->getAboutData($doctor_id);
                break;
            case 'contact':
                $data = $this->getContactData($doctor_id);
                break;
        }
        $data['user'] = User::with('details')->findOrFail($doctor_id);
        return view('site.' . $page, compact('data'));
    }

    public function renderTemplate2($doctor_id, $page = 'index')
    {
        switch ($page) {
            case 'index':
                $data = $this->getIndexData($doctor_id);
                break;
            case 'about':
                $data = $this->getAboutData($doctor_id);
                break;
            case 'contact':
                $data = $this->getContactData($doctor_id);
                break;
        }

        $data['user'] = User::with('details')->findOrFail($doctor_id);
        return view('site.templates.template_2.' . $page, compact('data'));
    }

    public function renderTemplate3($doctor_id, $page = 'index')
    {
        switch ($page) {
            case 'index':
                $data = $this->getIndexData($doctor_id);
                break;
            case 'about':
                $data = $this->getAboutData($doctor_id);
                break;
            case 'contact':
                $data = $this->getContactData($doctor_id);
                break;
        }

        $data['user'] = User::with('details')->findOrFail($doctor_id);
        return view('site.templates.template_3.' . $page, compact('data'));
    }

    public function renderTemplate4($doctor_id, $page = 'index')
    {
        switch ($page) {
            case 'index':
                $data = $this->getIndexData($doctor_id);
                break;
            case 'about':
                $data = $this->getAboutData($doctor_id);
                break;
            case 'contact':
                $data = $this->getContactData($doctor_id);
                break;
        }

        $data['user'] = User::with('details')->findOrFail($doctor_id);
        return view('site.templates.template_4.' . $page, compact('data'));
    }

    public function renderTemplate5($doctor_id, $page = 'index')
    {
        switch ($page) {
            case 'index':
                $data = $this->getIndexData($doctor_id);
                break;
            case 'about':
                $data = $this->getAboutData($doctor_id);
                break;
            case 'contact':
                $data = $this->getContactData($doctor_id);
                break;
        }

        $data['user'] = User::with('details')->findOrFail($doctor_id);
        return view('site.templates.template_5.' . $page, compact('data'));
    }

    public function renderTemplate6($doctor_id, $page = 'index')
    {
        switch ($page) {
            case 'index':
                $data = $this->getIndexData($doctor_id);
                break;
            case 'about':
                $data = $this->getAboutData($doctor_id);
                break;
            case 'contact':
                $data = $this->getContactData($doctor_id);
                break;
        }

        $data['user'] = User::with('details')->findOrFail($doctor_id);
        return view('site.templates.template_6.' . $page, compact('data'));
    }

    public function getIndexData($doctor_id)
    {
        $user = User::with('details')->findOrFail($doctor_id);
        return [
            'user' => $user,
            'template' => $user->details->template,
        ];
    }

    public function getAboutData($doctor_id)
    {
        $user = User::with('details')->findOrFail($doctor_id);
        return [
            'user' => $user,
            'template' => $user->details->template,
        ];
    }

    public function getContactData($doctor_id)
    {
        $user = User::with('details')->findOrFail($doctor_id);
        return [
            'user' => $user,
            'template' => $user->details->template,
        ];
    }

    public function sendContact(Request $request, $link_name)
    {
        $rules = [
            'name' => 'required',
            'email' => 'required|email',
            'msg' => 'required'
        ];

        $messages = [
            'name.required' => 'برجاء ادخال الاسم ',
            'email.required' => 'برجاء ادخال الايميل ',
            'msg.required' => 'برجاء ادخال الرسالة '
        ];

        $validatedData = $request->validate($rules, $messages);

        $contact = new DContact;
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->msg = $request->msg;
        $contact->doctor_id = $request->doctor_id;
        $contact->save();

        return back()->with('success', __('Successful'));
    }

    public function videoView($link_name, $id)
    {
        $video = VideoLibrary::findOrFail($id);
        $doctor = User::join('doctor_details', 'users.id', '=', 'doctor_details.doctor_id')
            ->where('link_name', $link_name)->first();

        if (!$doctor) return redirect()->route('home');
        $data['user'] = User::with('details')->findOrFail($doctor->doctor_id);

//        $template = $data['user']->details->template->id;

        return view('site.templates.template_' . $doctor->template_id . '.video', compact('data', 'video'));
    }

    public function blogView($link_name, $id)
    {
        $blog = Blog::findOrFail($id);
        $blogs = Blog::findOrFail($id);
        $doctor = User::join('doctor_details', 'users.id', '=', 'doctor_details.doctor_id')
            ->where('link_name', $link_name)->first();
        if (!$doctor) return redirect()->route('home');
        $data['user'] = User::with('details')->findOrFail($doctor->doctor_id);
//        $template = $data['user']->details->template->id;

        return view('site.templates.template_' . $doctor->template_id . '.blogOne', compact('data', 'blog'));
    }

    public function galleryView($link_name, $id)
    {
        $gallery = DGallery::findOrFail($id);
        $doctor = User::join('doctor_details', 'users.id', '=', 'doctor_details.doctor_id')
            ->where('link_name', $link_name)->first();
        if (!$doctor) return redirect()->route('home');
        $data['user'] = User::with('details')->findOrFail($doctor->doctor_id);
        return view('site.templates.template_' . $doctor->template_id . '.image', compact('data', 'gallery'));
    }


    private function generateDateRange(Carbon $start_date, Carbon $end_date, $days, $type, $service)
    {
        $dates = [];
        for ($date = $start_date->copy(); $date->lte($end_date); $date->addDay()) {
            if (in_array($date->dayOfWeek, $days->pluck('day')->toarray())) {
                $dates[] = $date->format('Y-m-d');
                $intervals = CarbonInterval::minutes($days->where('day', $date->dayOfWeek)->first()->interval)->toPeriod($days->where('day', $date->dayOfWeek)->first()->time_from, $days->where('day', $date->dayOfWeek)->first()->time_to);
                foreach ($intervals as $time_date) {
                    $check = Consultation::where('consultation_type', $type)->where('doctor_id', $service)->first();
                    if (!$check) {
                        $time [$date->format('Y-m-d')][] = $time_date->format('H:i');
                    }
                }
            }

            if (count($dates) == 6) {
                break;
            }
        }

        $array = [
            'date' => $dates,
            'time' => $time,
        ];
        return $array;
    }

    public function get_time(Request $request)
    {
        if ($request->ajax()) {
            if ($request->date) {
                $doctors = Doctor_appointments::where('doctor_id', $request->service_id)->where('type', $request->type)->get();
                $date_format = $request->date ? Carbon::parse($request->date) : Carbon::now();
                $dates = $this->generateDateRange($date_format, $date_format, $doctors, $request->type, $request->service_id);


                return view('site.time', compact('dates'));
            } else {
                $allow_type_with_day = [0, 1, 2];
                if (in_array($request->type, $allow_type_with_day)) {
                    $doctors = Doctor_appointments::where('doctor_id', $request->service_id)->where('type', $request->type)->get();
                    $dates = $this->generateDateRange(Carbon::now(), Carbon::now()->addMonth(), $doctors, $request->type, $request->service_id);
                    $result = array_unique($doctors->pluck('day')->toarray());
                    $clossday = [1, 2, 3, 4, 5, 6, 0];
                    $days = array_diff($clossday, $result);

                    return view('site.data_time', compact('dates', 'days'));
                }
            }
        }
    }
//array:9 [
//"type" => "1"
//"date" => "2020-09-18"
//"time" => "20:51"
//"name" => "3123123"
//"phone" => "+2012312312312"
//"email" => "asdasd@yahoo.com"
//"coupon" => null
//"paymnet" => "1"
//"service_id" => "108"
//]
    public function complete_appointment(Request $request)
    {
        if ($request->ajax()) {
            $rules = [
                'type' => 'required|between:0,4',
                'name' => 'required',
                'phone' => 'required',
                'paymnet' => 'required',
                'email' => 'required|email',
            ];

            $messages = [
                'type.required' => 'برجاء ادخال الاسم ',
                'email.required' => 'برجاء ادخال الايميل ',
                'msg.required' => 'برجاء ادخال الرسالة '
            ];

            $validatedData = $request->validate($rules, $messages);
            $fullurl = url()->previous();
            $docurl = explode('/', $fullurl);
            $doctor_id = $docurl[count(explode('/', $fullurl)) - 3];
            $doctorname = DoctorDetail::where('link_name', urldecode($doctor_id))->first();
            if (!$doctorname) {
                return response(['error' => 'doctor not found'], 400);
            }
            $allow_type_with_day = [0, 1, 2];
            if (in_array($request->type, $allow_type_with_day)) {
                $day = Carbon::parse($request->date)->dayOfWeek;
                $check_day = Doctor_appointments::where('doctor_id', $doctorname->doctor_id)->
                where('day', $day)->where('type', $request->type)->first();
                if (!$check_day) {
                    return response(['error' => 'doctor day error'], 400);

                }

                $check = Consultation::where('appointment_on_date', $request->date)->
                where('appointment_on_time', $request->time)->
                where('consultation_type', $request->type)->
                where('doctor_id', $doctorname->doctor_id)->first();

                if ($check) {
                    return response(['error' => 'doctor day already booking'], 400);

                }
            }

            $price = $doctorname->ConstlationPrice($request->type);

            if (auth()->check()) {
                $patient_id = auth()->user()->id;
            } else {
                $patient_id = User::firstOrcreate([
                        'email' => $request->email,
                        'phone_number' => $request->phone,
                        'role_id' => 3,
                    ]
                    , [
                        'name' => $request->name,
                        'email' => $request->email,
                        'phone_number' => $request->phone,
                        'password' => Hash::make(round(1, 100)),
                        'role_id' => 3,
                    ])->id;

            }


            $expired_at = Carbon::now()->addDays(2)->toDateTimeString();

            $consultation = Consultation::create([
                'appointment_on_date' => $request->date,
                'appointment_on_time' => $request->time,
                'price' => $price,
                'patient_id' => $patient_id,
                'doctor_id' => $doctorname->doctor_id,
                'consultation_type' => $request->type,
                'coupon' => $request->coupon,
                'type_id' => 2,
                'currency_id' => $doctorname->currency_id,
                'expired_at' => $expired_at,
            ]);
            if ($request->coupon) {
                PatientCoupon::create([
                    'phone' => $request->phone,
                    'Consultation_id' => $consultation->id,
                    'email' => $request->email,
                    'code' => $request->coupon
                ]);
            }
            return view('site.templates.template_1.success', compact('consultation'));

        }
    }


    public function ajax_couponcode(Request $request)
    {

        if ($request->ajax()) {
            $fullurl = url()->previous();
            $docurl = explode('/', $fullurl);
            $doctor_id = $docurl[count(explode('/', $fullurl)) - 3];
            $doctorname = DoctorDetail::where('link_name', urldecode($doctor_id))->first();
            $check_coupon = Doctorcoupon::where('code', $request->coupon)->
            where('doctor_id', $doctorname->doctor_id)->
            where('end_at', '>=', Carbon::now()->toDateString())
                ->first();
            if ($check_coupon) {
                if ($check_coupon->limited == null) {

                } else {
                    $count = PatientCoupon::where('phone', $request->email)->where('email', $request->phone)->where('code', $request->coupon)->count();
                    if ($count <= $check_coupon->limited) {
                        return response(['data' => trans('NoDataFound')], 400);

                    }
                }
                if ($check_coupon->discount_type == 'percent') {
                    $type = '%';
                } else {
                    $type = $doctorname->currency->symbol;
                }
                $final_response = $check_coupon->discount . " " . $type;
                return response($final_response, 200);
            }
            return response(['data' => trans('NoDataFound')], 400);


        }
    }

    public function dologin(Request $request)
    {
        $rules = [
            'password' => 'required',
            'email' => 'required|email',
        ];

        $messages = [
            'email.required' => 'برجاء ادخال الايميل ',
            'password.required' => 'برجاء ادخال كلمه السر '
        ];

        $validatedData = $request->validate($rules, $messages);


        if (\Illuminate\Support\Facades\Auth::attempt(['email' => request('email'), 'password' => request('password')])) {
            $fullurl = url()->previous();
            $docurl = explode('/', $fullurl);
            $index = count($docurl) - 2;
            return redirect()->route('template.index', $docurl[$index] . '/index');

        } else {
            session()->flash('error', trans('inccorrect_information_login'));
            return back();
        }
    }

    public function doregister(Request $request)
    {
        $rules = [
            'password' => 'required',
            'email' => 'required|email',
        ];

        $messages = [
            'email.required' => 'برجاء ادخال الايميل ',
            'password.required' => 'برجاء ادخال كلمه السر '
        ];

        $validatedData = $request->validate($rules, $messages);
        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role_id' => 3,
        ]);

        session()->flash('success', trans('Successful'));

        return back();

    }

}
