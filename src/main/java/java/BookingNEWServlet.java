/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet("/BookingNEWServlet")
public class BookingNEWServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nama = request.getParameter("nama");
        String telefon = request.getParameter("telefon");
        String tarikh = request.getParameter("tarikh");
        String masa = request.getParameter("masa");

        // Gabungkan tarikh dan masa tempahan ke Date object
        try {
            String fullDateTime = tarikh + " " + masa;
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            Date bookingDate = sdf.parse(fullDateTime);

            // Simpan data ke DB (boleh tambah nanti)

            // Jadualkan reminder
            scheduleReminder(nama, telefon, bookingDate);

            response.getWriter().println("Tempahan berjaya! Reminder akan dihantar secara automatik.");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Ralat semasa proses tempahan.");
        }
    }

    private void scheduleReminder(String nama, String telefon, Date bookingDate) {
        Timer timer = new Timer();

        // Reminder 1 hari sebelum
        Calendar cal1 = Calendar.getInstance();
        cal1.setTime(bookingDate);
        cal1.add(Calendar.DAY_OF_MONTH, -1);
        Date reminder1DayBefore = cal1.getTime();

        // Reminder 1 jam sebelum
        Calendar cal2 = Calendar.getInstance();
        cal2.setTime(bookingDate);
        cal2.add(Calendar.HOUR_OF_DAY, -1);
        Date reminder1HourBefore = cal2.getTime();

        timer.schedule(new ReminderTask(nama, telefon, "1 Hari Sebelum"), reminder1DayBefore);
        timer.schedule(new ReminderTask(nama, telefon, "1 Jam Sebelum"), reminder1HourBefore);
    }

    class ReminderTask extends TimerTask {
        String nama;
        String telefon;
        String when;

        public ReminderTask(String nama, String telefon, String when) {
            this.nama = nama;
            this.telefon = telefon;
            this.when = when;
        }

        @Override
        public void run() {
            // Di sini anda boleh sambungkan ke SMS API / WhatsApp / Email
            System.out.println("Hantar reminder kepada " + nama + " (" + telefon + ") - " + when);
        }
    }
}

