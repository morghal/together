<script setup>
import { Head, Link, useForm } from '@inertiajs/vue3';
import computed from 'vue';
import AuthenticationCard from '@/Components/AuthenticationCard.vue';
import AuthenticationCardLogo from '@/Components/AuthenticationCardLogo.vue';
import Checkbox from '@/Components/Checkbox.vue';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import TextInput from '@/Components/TextInput.vue';

const form = useForm({
    firstname:'',
    lastname: '',
    pseudo: '',
    birth_date:'',
    email: '',
    city: '',
    country: '',
    password: '',
    password_confirmation: '',
    terms: false,
});

const submit = () => {
    form.post(route('register'), {
        onFinish: () => form.reset('password', 'password_confirmation'),
    });
};

const Today = () => {
    
    const options = {
        year: 'numeric', 
        month: '2-digit', 
        day: '2-digit', 
        timeZone: 'UTC'
    };

    const todayDate = new Date().toLocaleString(undefined, options).slice(0,10);
    return todayDate;

}
</script>

<template>
    <Head title="Register" />

    <AuthenticationCard>
        <template #logo>
            <AuthenticationCardLogo />
        </template>

        <form @submit.prevent="submit">
            <div>
                <InputLabel for="firstname" value="Firstame" />
                <TextInput
                    id="firstname"
                    v-model="form.firstname"
                    type="text"
                    class="mt-1 block w-full"
                    required
                    autofocus
                    autocomplete="given-name"
                />
                <InputError class="mt-2" :message="form.errors.firstname" />
            </div>

            <div class="mt-4">
                <InputLabel for="lastname" value="Lastname" />
                <TextInput
                    id="lastname"
                    v-model="form.lastname"
                    type="text"
                    class="mt-1 block w-full"
                    required
                    autofocus
                    autocomplete="family-name"
                />
                <InputError class="mt-2" :message="form.errors.lastname" />
            </div>

            <div class="mt-4">
                <InputLabel for="pseudo" value="Pseudo" />
                <TextInput
                    id="pseudo"
                    v-model="form.pseudo"
                    type="text"
                    class="mt-1 block w-full"
                    required
                    autofocus
                    autocomplete="username"
                />
                <InputError class="mt-2" :message="form.errors.pseudo" />
            </div>

            <div class="mt-4">
                <InputLabel for="birth_date" value="Birthdate" />
                <TextInput
                    id="birth_date"
                    v-model="form.birth_date"
                    type="date"
                    min="1910-01-01"
                    :max="Today()"
                    class="mt-1 block w-full"
                    required
                    autofocus
                    autocomplete="bday"
                />
                <InputError class="mt-2" :message="form.errors.birth_date" />
            </div>

            <div class="mt-4">
                <InputLabel for="email" value="Email" />
                <TextInput
                    id="email"
                    v-model="form.email"
                    type="email"
                    class="mt-1 block w-full"
                    required
                    autocomplete="email"
                />
                <InputError class="mt-2" :message="form.errors.email" />
            </div>

            <div class="mt-4">
                <InputLabel for="city" value="City" />
                <TextInput
                    id="city"
                    v-model="form.city"
                    type="text"
                    class="mt-1 block w-full"
                    required
                    autocomplete="address-level2"
                />
                <InputError class="mt-2" :message="form.errors.city" />
            </div>

            <div class="mt-4">
                <InputLabel for="country" value="Country" />
                <TextInput
                    id="country"
                    v-model="form.country"
                    type="text"
                    class="mt-1 block w-full"
                    required
                    autocomplete="country"
                />
                <InputError class="mt-2" :message="form.errors.country" />
            </div>

            <div class="mt-4">
                <InputLabel for="password" value="Password" />
                <TextInput
                    id="password"
                    v-model="form.password"
                    type="password"
                    class="mt-1 block w-full"
                    required
                    autocomplete="new-password"
                />
                <InputError class="mt-2" :message="form.errors.password" />
            </div>

            <div class="mt-4">
                <InputLabel for="password_confirmation" value="Confirm Password" />
                <TextInput
                    id="password_confirmation"
                    v-model="form.password_confirmation"
                    type="password"
                    class="mt-1 block w-full"
                    required
                    autocomplete="new-password"
                />
                <InputError class="mt-2" :message="form.errors.password_confirmation" />
            </div>

            <div v-if="$page.props.jetstream.hasTermsAndPrivacyPolicyFeature" class="mt-4">
                <InputLabel for="terms">
                    <div class="flex items-center">
                        <Checkbox id="terms" v-model:checked="form.terms" name="terms" required />

                        <div class="ml-2">
                            I agree to the <a target="_blank" :href="route('terms.show')" class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Terms of Service</a> and <a target="_blank" :href="route('policy.show')" class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">Privacy Policy</a>
                        </div>
                    </div>
                    <InputError class="mt-2" :message="form.errors.terms" />
                </InputLabel>
            </div>

            <div class="flex items-center justify-end mt-4">
                <Link :href="route('login')" class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                    Already registered?
                </Link>

                <PrimaryButton class="ml-4" :class="{ 'opacity-25': form.processing }" :disabled="form.processing">
                    Register
                </PrimaryButton>
            </div>
        </form>
    </AuthenticationCard>
</template>
