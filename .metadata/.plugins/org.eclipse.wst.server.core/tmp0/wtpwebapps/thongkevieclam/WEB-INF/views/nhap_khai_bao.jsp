<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/taglib.jsp"%>

<title>Khai báo</title>

<body>
	<div class="mt-5">
		<form:form method="POST" action="nhap_khai_bao"
			modelAttribute="tNghiep">
			<%-- 			<c:if test="${not empty errors}">
				<div class="alert alert-danger">${errors}</div>
			</c:if> --%>

			<div class="row">
				<div class="col-6 mb-3 form-group">
					<label for="socmnd">Số CMND</label> <input type="text"
						class="form-control" id="socmnd" placeholder="Số CMND"
						name="socmnd">
					<form:errors path="socmnd" cssClass="text-danger" />
				</div>
				<div class="col-6 mb-3 form-group">
					<label for="hoten">Họ và tên</label> <input type="text"
						class="form-control" placeholder="Họ và tên" name="hoten">
				</div>
				<div class="col-6 mb-3 form-group">
					<label for="email">Email</label> <input type="email"
						class="form-control" placeholder="Email" name="email">
				</div>
				<div class="col-6 mb-3 form-group">
					<label for="sodt">Số điện thoại</label> <input type="number"
						class="form-control" placeholder="Số điện thoại" name="sodt">
				</div>
				<div class="col-6 mb-3 form-group">
					<label for="diachi">Địa chỉ</label> <input type="text"
						class="form-control" placeholder="Địa chỉ" name="diachi">
				</div>
				<div class="col-6 mb-3 form-group">
					<label for="matruong">Mã trường</label> <select name="matruong"
						id="matruong" class="form-control">
						<option value="" disabled selected hidden></option>
						<c:forEach var="item" items="${truongs}">
							<option value="${item.matruong}">${item.matruong}</option>
						</c:forEach>
					</select>
					<form:errors path="matruong" cssClass="text-danger" />
				</div>
				<div class="col-6 mb-3 form-group">
					<label for="manganh">Mã nghành</label> <select name="manganh"
						id="manganh" class="form-control">
						<option value="" disabled selected hidden></option> 
						<c:forEach var="item" items="${nghanhs}">
							<option value="${item.manganh }">${item.manganh }</option>
						</c:forEach>
					</select>
					<form:errors path="manganh" cssClass="text-danger" />
				</div>
				<div class="col-6 mb-3 form-group">
					<label for="hetn">Hệ tốt nghiệp</label> <input type="text"
						class="form-control" placeholder="Hệ tốt nghiệp" name="hetn">
				</div>
				<div class="col-6 mb-3 form-group">
					<label for="ngaytn">Ngày tốt nghiệp</label> <input type="date"
						class="form-control" placeholder="Ngày Tốt nghiệp" name="ngaytn">
				</div>
				<div class="col-6 mb-3 form-group">
					<label for="loaitn">Loại tốt nghiệp</label> <input type="text"
						class="form-control" placeholder="Loại tốt nghiệp" name="loaitn">
				</div>
			</div>
			<button type="submit" class="btn btn-success mt-3">Lưu</button>
			<a href='<c:url value="/" />' class="btn btn-primary mt-3">Quay
				lại</a>
		</form:form>
	</div>
</body>