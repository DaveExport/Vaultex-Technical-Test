using PagedList;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using Vaultex.Models;

namespace Vaultex.Controllers
{
    public class OrganisationsController : Controller
    {
        private VaultexEntities db = new VaultexEntities();

        // GET: Organisations
        public ActionResult Index(int page = 1, int pageSize = 5)
        {
            List<Organisation> orgs = db.Organisations.ToList().OrderBy(i => i.OrganisationName).ToList();
            PagedList<Organisation> model = new PagedList<Organisation>(orgs, page, pageSize);
            return View(model);
        }

        // GET: Organisations/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Organisation organisation = db.Organisations.Find(id);
            if (organisation == null)
            {
                return HttpNotFound();
            }
            return View(organisation);
        }

        // GET: Organisations/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Organisations/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,OrganisationName,OrganisationNumber,AddressLine1,AddressLine2,AddressLine3,AddressLine4,Town,Postcode,F9")] Organisation organisation)
        {
            if (ModelState.IsValid)
            {
                db.Organisations.Add(organisation);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(organisation);
        }

        // GET: Organisations/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Organisation organisation = db.Organisations.Find(id);
            if (organisation == null)
            {
                return HttpNotFound();
            }
            return View(organisation);
        }

        // POST: Organisations/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,OrganisationName,OrganisationNumber,AddressLine1,AddressLine2,AddressLine3,AddressLine4,Town,Postcode,F9")] Organisation organisation)
        {
            if (ModelState.IsValid)
            {
                db.Entry(organisation).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(organisation);
        }

        // GET: Organisations/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Organisation organisation = db.Organisations.Find(id);
            if (organisation == null)
            {
                return HttpNotFound();
            }
            return View(organisation);
        }

        // POST: Organisations/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Organisation organisation = db.Organisations.Find(id);
            db.Organisations.Remove(organisation);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
