-- Seed data for car recommendation system
-- Indian market cars with realistic specs and pricing

-- ============================================================
-- MAKES
-- ============================================================
INSERT INTO public.makes (id, name, logo_url) VALUES
  ('a0000000-0000-0000-0000-000000000001', 'Maruti Suzuki', null),
  ('a0000000-0000-0000-0000-000000000002', 'Hyundai', null),
  ('a0000000-0000-0000-0000-000000000003', 'Tata', null),
  ('a0000000-0000-0000-0000-000000000004', 'Mahindra', null),
  ('a0000000-0000-0000-0000-000000000005', 'Kia', null),
  ('a0000000-0000-0000-0000-000000000006', 'Toyota', null),
  ('a0000000-0000-0000-0000-000000000007', 'Honda', null),
  ('a0000000-0000-0000-0000-000000000008', 'MG', null),
  ('a0000000-0000-0000-0000-000000000009', 'Skoda', null),
  ('a0000000-0000-0000-0000-000000000010', 'Volkswagen', null);

-- ============================================================
-- MODELS
-- ============================================================

-- Maruti Suzuki
INSERT INTO public.models (id, make_id, name, body_type) VALUES
  ('b0000000-0000-0000-0000-000000000001', 'a0000000-0000-0000-0000-000000000001', 'Swift', 'Hatchback'),
  ('b0000000-0000-0000-0000-000000000002', 'a0000000-0000-0000-0000-000000000001', 'Baleno', 'Hatchback'),
  ('b0000000-0000-0000-0000-000000000003', 'a0000000-0000-0000-0000-000000000001', 'Brezza', 'SUV'),
  ('b0000000-0000-0000-0000-000000000004', 'a0000000-0000-0000-0000-000000000001', 'Ertiga', 'MPV'),
  ('b0000000-0000-0000-0000-000000000005', 'a0000000-0000-0000-0000-000000000001', 'Grand Vitara', 'SUV');

-- Hyundai
INSERT INTO public.models (id, make_id, name, body_type) VALUES
  ('b0000000-0000-0000-0000-000000000006', 'a0000000-0000-0000-0000-000000000002', 'i20', 'Hatchback'),
  ('b0000000-0000-0000-0000-000000000007', 'a0000000-0000-0000-0000-000000000002', 'Venue', 'SUV'),
  ('b0000000-0000-0000-0000-000000000008', 'a0000000-0000-0000-0000-000000000002', 'Creta', 'SUV'),
  ('b0000000-0000-0000-0000-000000000009', 'a0000000-0000-0000-0000-000000000002', 'Verna', 'Sedan'),
  ('b0000000-0000-0000-0000-000000000010', 'a0000000-0000-0000-0000-000000000002', 'Tucson', 'SUV');

-- Tata
INSERT INTO public.models (id, make_id, name, body_type) VALUES
  ('b0000000-0000-0000-0000-000000000011', 'a0000000-0000-0000-0000-000000000003', 'Punch', 'SUV'),
  ('b0000000-0000-0000-0000-000000000012', 'a0000000-0000-0000-0000-000000000003', 'Nexon', 'SUV'),
  ('b0000000-0000-0000-0000-000000000013', 'a0000000-0000-0000-0000-000000000003', 'Harrier', 'SUV'),
  ('b0000000-0000-0000-0000-000000000014', 'a0000000-0000-0000-0000-000000000003', 'Safari', 'SUV'),
  ('b0000000-0000-0000-0000-000000000015', 'a0000000-0000-0000-0000-000000000003', 'Altroz', 'Hatchback');

-- Mahindra
INSERT INTO public.models (id, make_id, name, body_type) VALUES
  ('b0000000-0000-0000-0000-000000000016', 'a0000000-0000-0000-0000-000000000004', 'XUV700', 'SUV'),
  ('b0000000-0000-0000-0000-000000000017', 'a0000000-0000-0000-0000-000000000004', 'Thar', 'SUV'),
  ('b0000000-0000-0000-0000-000000000018', 'a0000000-0000-0000-0000-000000000004', 'Scorpio N', 'SUV'),
  ('b0000000-0000-0000-0000-000000000019', 'a0000000-0000-0000-0000-000000000004', 'XUV300', 'SUV'),
  ('b0000000-0000-0000-0000-000000000020', 'a0000000-0000-0000-0000-000000000004', 'Bolero', 'SUV');

-- Kia
INSERT INTO public.models (id, make_id, name, body_type) VALUES
  ('b0000000-0000-0000-0000-000000000021', 'a0000000-0000-0000-0000-000000000005', 'Seltos', 'SUV'),
  ('b0000000-0000-0000-0000-000000000022', 'a0000000-0000-0000-0000-000000000005', 'Sonet', 'SUV'),
  ('b0000000-0000-0000-0000-000000000023', 'a0000000-0000-0000-0000-000000000005', 'Carens', 'MPV');

-- Toyota
INSERT INTO public.models (id, make_id, name, body_type) VALUES
  ('b0000000-0000-0000-0000-000000000024', 'a0000000-0000-0000-0000-000000000006', 'Innova Crysta', 'MPV'),
  ('b0000000-0000-0000-0000-000000000025', 'a0000000-0000-0000-0000-000000000006', 'Fortuner', 'SUV'),
  ('b0000000-0000-0000-0000-000000000026', 'a0000000-0000-0000-0000-000000000006', 'Urban Cruiser Hyryder', 'SUV');

-- Honda
INSERT INTO public.models (id, make_id, name, body_type) VALUES
  ('b0000000-0000-0000-0000-000000000027', 'a0000000-0000-0000-0000-000000000007', 'City', 'Sedan'),
  ('b0000000-0000-0000-0000-000000000028', 'a0000000-0000-0000-0000-000000000007', 'Elevate', 'SUV');

-- MG
INSERT INTO public.models (id, make_id, name, body_type) VALUES
  ('b0000000-0000-0000-0000-000000000029', 'a0000000-0000-0000-0000-000000000008', 'Hector', 'SUV'),
  ('b0000000-0000-0000-0000-000000000030', 'a0000000-0000-0000-0000-000000000008', 'Astor', 'SUV');

-- Skoda
INSERT INTO public.models (id, make_id, name, body_type) VALUES
  ('b0000000-0000-0000-0000-000000000031', 'a0000000-0000-0000-0000-000000000009', 'Slavia', 'Sedan'),
  ('b0000000-0000-0000-0000-000000000032', 'a0000000-0000-0000-0000-000000000009', 'Kushaq', 'SUV');

-- Volkswagen
INSERT INTO public.models (id, make_id, name, body_type) VALUES
  ('b0000000-0000-0000-0000-000000000033', 'a0000000-0000-0000-0000-000000000010', 'Virtus', 'Sedan'),
  ('b0000000-0000-0000-0000-000000000034', 'a0000000-0000-0000-0000-000000000010', 'Taigun', 'SUV');

-- ============================================================
-- VARIANTS + SPECS
-- ============================================================

-- Maruti Swift
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000001', 'b0000000-0000-0000-0000-000000000001', 'LXi', 'Petrol', 'Manual', 599000),
  ('c0000000-0000-0000-0000-000000000002', 'b0000000-0000-0000-0000-000000000001', 'VXi', 'Petrol', 'Manual', 699000),
  ('c0000000-0000-0000-0000-000000000003', 'b0000000-0000-0000-0000-000000000001', 'ZXi', 'Petrol', 'Manual', 799000),
  ('c0000000-0000-0000-0000-000000000004', 'b0000000-0000-0000-0000-000000000001', 'ZXi+', 'Petrol', 'AMT', 899000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000001', 1197, 82, 112, 24.80, 5, 268, 163, 870, 2, true, false),
  ('c0000000-0000-0000-0000-000000000002', 1197, 82, 112, 24.80, 5, 268, 163, 880, 2, true, false),
  ('c0000000-0000-0000-0000-000000000003', 1197, 82, 112, 24.80, 5, 268, 163, 890, 4, true, true),
  ('c0000000-0000-0000-0000-000000000004', 1197, 82, 112, 24.12, 5, 268, 163, 905, 6, true, true);

-- Maruti Baleno
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000005', 'b0000000-0000-0000-0000-000000000002', 'Sigma', 'Petrol', 'Manual', 665000),
  ('c0000000-0000-0000-0000-000000000006', 'b0000000-0000-0000-0000-000000000002', 'Delta', 'Petrol', 'Manual', 755000),
  ('c0000000-0000-0000-0000-000000000007', 'b0000000-0000-0000-0000-000000000002', 'Zeta', 'Petrol', 'Manual', 845000),
  ('c0000000-0000-0000-0000-000000000008', 'b0000000-0000-0000-0000-000000000002', 'Alpha', 'Petrol', 'AMT', 975000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000005', 1197, 90, 113, 22.94, 5, 318, 170, 920, 2, true, false),
  ('c0000000-0000-0000-0000-000000000006', 1197, 90, 113, 22.94, 5, 318, 170, 935, 2, true, false),
  ('c0000000-0000-0000-0000-000000000007', 1197, 90, 113, 22.94, 5, 318, 170, 945, 4, true, true),
  ('c0000000-0000-0000-0000-000000000008', 1197, 90, 113, 22.35, 5, 318, 170, 960, 6, true, true);

-- Maruti Brezza
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000009', 'b0000000-0000-0000-0000-000000000003', 'LXi', 'Petrol', 'Manual', 799000),
  ('c0000000-0000-0000-0000-000000000010', 'b0000000-0000-0000-0000-000000000003', 'VXi', 'Petrol', 'Manual', 925000),
  ('c0000000-0000-0000-0000-000000000011', 'b0000000-0000-0000-0000-000000000003', 'ZXi', 'Petrol', 'Automatic', 1099000),
  ('c0000000-0000-0000-0000-000000000012', 'b0000000-0000-0000-0000-000000000003', 'ZXi+', 'Petrol', 'Automatic', 1240000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000009', 1462, 103, 137, 20.15, 5, 328, 198, 1090, 2, true, false),
  ('c0000000-0000-0000-0000-000000000010', 1462, 103, 137, 20.15, 5, 328, 198, 1100, 4, true, true),
  ('c0000000-0000-0000-0000-000000000011', 1462, 103, 137, 19.80, 5, 328, 198, 1120, 6, true, true),
  ('c0000000-0000-0000-0000-000000000012', 1462, 103, 137, 19.80, 5, 328, 198, 1135, 6, true, true);

-- Maruti Ertiga
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000013', 'b0000000-0000-0000-0000-000000000004', 'LXi', 'Petrol', 'Manual', 849000),
  ('c0000000-0000-0000-0000-000000000014', 'b0000000-0000-0000-0000-000000000004', 'VXi', 'Petrol', 'Manual', 978000),
  ('c0000000-0000-0000-0000-000000000015', 'b0000000-0000-0000-0000-000000000004', 'ZXi', 'Petrol', 'Automatic', 1125000),
  ('c0000000-0000-0000-0000-000000000016', 'b0000000-0000-0000-0000-000000000004', 'ZXi+', 'Petrol', 'Automatic', 1270000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000013', 1462, 103, 137, 20.51, 7, 209, 185, 1135, 2, true, false),
  ('c0000000-0000-0000-0000-000000000014', 1462, 103, 137, 20.51, 7, 209, 185, 1145, 2, true, false),
  ('c0000000-0000-0000-0000-000000000015', 1462, 103, 137, 20.30, 7, 209, 185, 1160, 4, true, true),
  ('c0000000-0000-0000-0000-000000000016', 1462, 103, 137, 20.30, 7, 209, 185, 1175, 6, true, true);

-- Maruti Grand Vitara
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000017', 'b0000000-0000-0000-0000-000000000005', 'Sigma', 'Petrol', 'Manual', 1089000),
  ('c0000000-0000-0000-0000-000000000018', 'b0000000-0000-0000-0000-000000000005', 'Delta', 'Petrol', 'Manual', 1199000),
  ('c0000000-0000-0000-0000-000000000019', 'b0000000-0000-0000-0000-000000000005', 'Zeta', 'Hybrid', 'Automatic', 1549000),
  ('c0000000-0000-0000-0000-000000000020', 'b0000000-0000-0000-0000-000000000005', 'Alpha', 'Hybrid', 'Automatic', 1774000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000017', 1462, 103, 137, 21.11, 5, 373, 210, 1190, 2, true, false),
  ('c0000000-0000-0000-0000-000000000018', 1462, 103, 137, 21.11, 5, 373, 210, 1200, 4, true, true),
  ('c0000000-0000-0000-0000-000000000019', 1490, 116, 122, 27.97, 5, 373, 210, 1270, 6, true, true),
  ('c0000000-0000-0000-0000-000000000020', 1490, 116, 122, 27.97, 5, 373, 210, 1285, 6, true, true);

-- Hyundai i20
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000021', 'b0000000-0000-0000-0000-000000000006', 'Magna', 'Petrol', 'Manual', 715000),
  ('c0000000-0000-0000-0000-000000000022', 'b0000000-0000-0000-0000-000000000006', 'Sportz', 'Petrol', 'Manual', 835000),
  ('c0000000-0000-0000-0000-000000000023', 'b0000000-0000-0000-0000-000000000006', 'Asta', 'Petrol', 'Manual', 965000),
  ('c0000000-0000-0000-0000-000000000024', 'b0000000-0000-0000-0000-000000000006', 'Asta(O) Turbo', 'Turbo Petrol', 'DCT', 1165000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000021', 1197, 83, 114, 20.35, 5, 311, 170, 1000, 2, true, false),
  ('c0000000-0000-0000-0000-000000000022', 1197, 83, 114, 20.35, 5, 311, 170, 1015, 2, true, false),
  ('c0000000-0000-0000-0000-000000000023', 1197, 83, 114, 20.35, 5, 311, 170, 1035, 6, true, true),
  ('c0000000-0000-0000-0000-000000000024', 998, 120, 172, 20.25, 5, 311, 170, 1070, 6, true, true);

-- Hyundai Venue
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000025', 'b0000000-0000-0000-0000-000000000007', 'E', 'Petrol', 'Manual', 766000),
  ('c0000000-0000-0000-0000-000000000026', 'b0000000-0000-0000-0000-000000000007', 'S', 'Petrol', 'Manual', 890000),
  ('c0000000-0000-0000-0000-000000000027', 'b0000000-0000-0000-0000-000000000007', 'SX', 'Turbo Petrol', 'DCT', 1150000),
  ('c0000000-0000-0000-0000-000000000028', 'b0000000-0000-0000-0000-000000000007', 'SX(O)', 'Turbo Petrol', 'DCT', 1265000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000025', 1197, 83, 114, 17.5, 5, 350, 195, 1040, 2, true, false),
  ('c0000000-0000-0000-0000-000000000026', 1197, 83, 114, 17.5, 5, 350, 195, 1055, 2, true, false),
  ('c0000000-0000-0000-0000-000000000027', 998, 120, 172, 18.1, 5, 350, 195, 1100, 4, true, true),
  ('c0000000-0000-0000-0000-000000000028', 998, 120, 172, 18.1, 5, 350, 195, 1115, 6, true, true);

-- Hyundai Creta
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000029', 'b0000000-0000-0000-0000-000000000008', 'E', 'Petrol', 'Manual', 1100000),
  ('c0000000-0000-0000-0000-000000000030', 'b0000000-0000-0000-0000-000000000008', 'EX', 'Petrol', 'Manual', 1210000),
  ('c0000000-0000-0000-0000-000000000031', 'b0000000-0000-0000-0000-000000000008', 'SX', 'Turbo Petrol', 'DCT', 1575000),
  ('c0000000-0000-0000-0000-000000000032', 'b0000000-0000-0000-0000-000000000008', 'SX(O)', 'Diesel', 'Automatic', 1845000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000029', 1497, 115, 144, 16.8, 5, 433, 190, 1215, 2, true, false),
  ('c0000000-0000-0000-0000-000000000030', 1497, 115, 144, 16.8, 5, 433, 190, 1235, 4, true, true),
  ('c0000000-0000-0000-0000-000000000031', 1482, 160, 253, 18.4, 5, 433, 190, 1360, 6, true, true),
  ('c0000000-0000-0000-0000-000000000032', 1493, 116, 250, 21.4, 5, 433, 190, 1400, 6, true, true);

-- Hyundai Verna
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000033', 'b0000000-0000-0000-0000-000000000009', 'EX', 'Petrol', 'Manual', 1090000),
  ('c0000000-0000-0000-0000-000000000034', 'b0000000-0000-0000-0000-000000000009', 'S', 'Petrol', 'Manual', 1190000),
  ('c0000000-0000-0000-0000-000000000035', 'b0000000-0000-0000-0000-000000000009', 'SX', 'Turbo Petrol', 'DCT', 1445000),
  ('c0000000-0000-0000-0000-000000000036', 'b0000000-0000-0000-0000-000000000009', 'SX(O)', 'Turbo Petrol', 'DCT', 1570000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000033', 1497, 115, 144, 18.6, 5, 480, 165, 1150, 2, true, false),
  ('c0000000-0000-0000-0000-000000000034', 1497, 115, 144, 18.6, 5, 480, 165, 1165, 4, true, true),
  ('c0000000-0000-0000-0000-000000000035', 1482, 160, 253, 20.6, 5, 480, 165, 1270, 6, true, true),
  ('c0000000-0000-0000-0000-000000000036', 1482, 160, 253, 20.6, 5, 480, 165, 1285, 6, true, true);

-- Hyundai Tucson
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000037', 'b0000000-0000-0000-0000-000000000010', 'GL', 'Petrol', 'Automatic', 2775000),
  ('c0000000-0000-0000-0000-000000000038', 'b0000000-0000-0000-0000-000000000010', 'Platinum', 'Diesel', 'Automatic', 3245000),
  ('c0000000-0000-0000-0000-000000000039', 'b0000000-0000-0000-0000-000000000010', 'Signature', 'Diesel', 'Automatic', 3525000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000037', 1999, 156, 192, 14.2, 5, 539, 177, 1545, 6, true, true),
  ('c0000000-0000-0000-0000-000000000038', 1995, 186, 416, 18.4, 5, 539, 177, 1630, 6, true, true),
  ('c0000000-0000-0000-0000-000000000039', 1995, 186, 416, 18.4, 5, 539, 177, 1650, 6, true, true);

-- Tata Punch
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000040', 'b0000000-0000-0000-0000-000000000011', 'Pure', 'Petrol', 'Manual', 600000),
  ('c0000000-0000-0000-0000-000000000041', 'b0000000-0000-0000-0000-000000000011', 'Adventure', 'Petrol', 'Manual', 725000),
  ('c0000000-0000-0000-0000-000000000042', 'b0000000-0000-0000-0000-000000000011', 'Accomplished', 'Petrol', 'AMT', 850000),
  ('c0000000-0000-0000-0000-000000000043', 'b0000000-0000-0000-0000-000000000011', 'Creative', 'Petrol', 'AMT', 945000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000040', 1199, 86, 115, 18.97, 5, 366, 187, 960, 2, true, false),
  ('c0000000-0000-0000-0000-000000000041', 1199, 86, 115, 18.97, 5, 366, 187, 975, 2, true, false),
  ('c0000000-0000-0000-0000-000000000042', 1199, 86, 115, 18.82, 5, 366, 187, 990, 4, true, true),
  ('c0000000-0000-0000-0000-000000000043', 1199, 86, 115, 18.82, 5, 366, 187, 1005, 6, true, true);

-- Tata Nexon
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000044', 'b0000000-0000-0000-0000-000000000012', 'Smart', 'Petrol', 'Manual', 799000),
  ('c0000000-0000-0000-0000-000000000045', 'b0000000-0000-0000-0000-000000000012', 'Smart+', 'Petrol', 'Manual', 925000),
  ('c0000000-0000-0000-0000-000000000046', 'b0000000-0000-0000-0000-000000000012', 'Pure+ S', 'Diesel', 'Manual', 1099000),
  ('c0000000-0000-0000-0000-000000000047', 'b0000000-0000-0000-0000-000000000012', 'Creative+', 'Diesel', 'AMT', 1410000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000044', 1199, 120, 170, 17.4, 5, 350, 209, 1157, 2, true, false),
  ('c0000000-0000-0000-0000-000000000045', 1199, 120, 170, 17.4, 5, 350, 209, 1170, 4, true, true),
  ('c0000000-0000-0000-0000-000000000046', 1497, 115, 260, 23.2, 5, 350, 209, 1280, 6, true, true),
  ('c0000000-0000-0000-0000-000000000047', 1497, 115, 260, 22.7, 5, 350, 209, 1300, 6, true, true);

-- Tata Harrier
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000048', 'b0000000-0000-0000-0000-000000000013', 'Smart', 'Diesel', 'Manual', 1500000),
  ('c0000000-0000-0000-0000-000000000049', 'b0000000-0000-0000-0000-000000000013', 'Pure+', 'Diesel', 'Manual', 1675000),
  ('c0000000-0000-0000-0000-000000000050', 'b0000000-0000-0000-0000-000000000013', 'XZ+', 'Diesel', 'Automatic', 2150000),
  ('c0000000-0000-0000-0000-000000000051', 'b0000000-0000-0000-0000-000000000013', 'XZA+', 'Diesel', 'Automatic', 2450000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000048', 1956, 170, 350, 16.35, 5, 425, 198, 1610, 4, true, true),
  ('c0000000-0000-0000-0000-000000000049', 1956, 170, 350, 16.35, 5, 425, 198, 1625, 6, true, true),
  ('c0000000-0000-0000-0000-000000000050', 1956, 170, 350, 14.60, 5, 425, 198, 1660, 6, true, true),
  ('c0000000-0000-0000-0000-000000000051', 1956, 170, 350, 14.60, 5, 425, 198, 1680, 6, true, true);

-- Tata Safari
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000052', 'b0000000-0000-0000-0000-000000000014', 'Smart', 'Diesel', 'Manual', 1600000),
  ('c0000000-0000-0000-0000-000000000053', 'b0000000-0000-0000-0000-000000000014', 'Pure+', 'Diesel', 'Manual', 1775000),
  ('c0000000-0000-0000-0000-000000000054', 'b0000000-0000-0000-0000-000000000014', 'XZ+', 'Diesel', 'Automatic', 2350000),
  ('c0000000-0000-0000-0000-000000000055', 'b0000000-0000-0000-0000-000000000014', 'XZA+', 'Diesel', 'Automatic', 2650000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000052', 1956, 170, 350, 14.08, 7, 340, 198, 1690, 4, true, true),
  ('c0000000-0000-0000-0000-000000000053', 1956, 170, 350, 14.08, 7, 340, 198, 1705, 6, true, true),
  ('c0000000-0000-0000-0000-000000000054', 1956, 170, 350, 13.15, 7, 340, 198, 1740, 6, true, true),
  ('c0000000-0000-0000-0000-000000000055', 1956, 170, 350, 13.15, 7, 340, 198, 1760, 6, true, true);

-- Tata Altroz
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000056', 'b0000000-0000-0000-0000-000000000015', 'XE', 'Petrol', 'Manual', 670000),
  ('c0000000-0000-0000-0000-000000000057', 'b0000000-0000-0000-0000-000000000015', 'XM+', 'Petrol', 'Manual', 775000),
  ('c0000000-0000-0000-0000-000000000058', 'b0000000-0000-0000-0000-000000000015', 'XZ', 'Diesel', 'Manual', 930000),
  ('c0000000-0000-0000-0000-000000000059', 'b0000000-0000-0000-0000-000000000015', 'XZ+', 'Diesel', 'Manual', 1025000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000056', 1199, 86, 113, 22.07, 5, 345, 165, 995, 2, true, false),
  ('c0000000-0000-0000-0000-000000000057', 1199, 86, 113, 22.07, 5, 345, 165, 1010, 2, true, false),
  ('c0000000-0000-0000-0000-000000000058', 1497, 90, 200, 25.11, 5, 345, 165, 1090, 4, true, true),
  ('c0000000-0000-0000-0000-000000000059', 1497, 90, 200, 25.11, 5, 345, 165, 1105, 6, true, true);

-- Mahindra XUV700
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000060', 'b0000000-0000-0000-0000-000000000016', 'MX', 'Petrol', 'Manual', 1399000),
  ('c0000000-0000-0000-0000-000000000061', 'b0000000-0000-0000-0000-000000000016', 'AX3', 'Petrol', 'Manual', 1560000),
  ('c0000000-0000-0000-0000-000000000062', 'b0000000-0000-0000-0000-000000000016', 'AX5', 'Diesel', 'Automatic', 1950000),
  ('c0000000-0000-0000-0000-000000000063', 'b0000000-0000-0000-0000-000000000016', 'AX7 L', 'Diesel', 'Automatic', 2450000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000060', 1997, 200, 380, 15.8, 5, 451, 200, 1590, 2, true, true),
  ('c0000000-0000-0000-0000-000000000061', 1997, 200, 380, 15.8, 5, 451, 200, 1610, 4, true, true),
  ('c0000000-0000-0000-0000-000000000062', 2184, 185, 420, 16.3, 7, 451, 200, 1750, 6, true, true),
  ('c0000000-0000-0000-0000-000000000063', 2184, 185, 450, 16.3, 7, 451, 200, 1830, 7, true, true);

-- Mahindra Thar
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000064', 'b0000000-0000-0000-0000-000000000017', 'AX Opt', 'Petrol', 'Manual', 1125000),
  ('c0000000-0000-0000-0000-000000000065', 'b0000000-0000-0000-0000-000000000017', 'LX', 'Diesel', 'Manual', 1380000),
  ('c0000000-0000-0000-0000-000000000066', 'b0000000-0000-0000-0000-000000000017', 'LX AT', 'Diesel', 'Automatic', 1560000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000064', 1997, 152, 300, 15.2, 4, 295, 226, 1680, 2, true, true),
  ('c0000000-0000-0000-0000-000000000065', 2184, 130, 300, 15.2, 4, 295, 226, 1750, 2, true, true),
  ('c0000000-0000-0000-0000-000000000066', 2184, 130, 300, 15.2, 4, 295, 226, 1770, 2, true, true);

-- Mahindra Scorpio N
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000067', 'b0000000-0000-0000-0000-000000000018', 'Z4', 'Petrol', 'Manual', 1350000),
  ('c0000000-0000-0000-0000-000000000068', 'b0000000-0000-0000-0000-000000000018', 'Z6', 'Diesel', 'Manual', 1555000),
  ('c0000000-0000-0000-0000-000000000069', 'b0000000-0000-0000-0000-000000000018', 'Z8', 'Diesel', 'Automatic', 1825000),
  ('c0000000-0000-0000-0000-000000000070', 'b0000000-0000-0000-0000-000000000018', 'Z8 L', 'Diesel', 'Automatic', 2035000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000067', 1997, 200, 380, 14.5, 7, 460, 210, 1815, 2, true, true),
  ('c0000000-0000-0000-0000-000000000068', 2184, 175, 370, 16.1, 7, 460, 210, 1870, 4, true, true),
  ('c0000000-0000-0000-0000-000000000069', 2184, 175, 400, 15.0, 7, 460, 210, 1910, 6, true, true),
  ('c0000000-0000-0000-0000-000000000070', 2184, 175, 400, 15.0, 7, 460, 210, 1940, 6, true, true);

-- Mahindra XUV300
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000071', 'b0000000-0000-0000-0000-000000000019', 'W4', 'Petrol', 'Manual', 799000),
  ('c0000000-0000-0000-0000-000000000072', 'b0000000-0000-0000-0000-000000000019', 'W6', 'Petrol', 'Manual', 925000),
  ('c0000000-0000-0000-0000-000000000073', 'b0000000-0000-0000-0000-000000000019', 'W8', 'Diesel', 'Manual', 1125000),
  ('c0000000-0000-0000-0000-000000000074', 'b0000000-0000-0000-0000-000000000019', 'W8(O)', 'Diesel', 'AMT', 1275000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000071', 1197, 110, 200, 17.0, 5, 257, 180, 1185, 2, true, false),
  ('c0000000-0000-0000-0000-000000000072', 1197, 110, 200, 17.0, 5, 257, 180, 1195, 4, true, true),
  ('c0000000-0000-0000-0000-000000000073', 1497, 115, 300, 20.0, 5, 257, 180, 1290, 6, true, true),
  ('c0000000-0000-0000-0000-000000000074', 1497, 115, 300, 19.5, 5, 257, 180, 1310, 7, true, true);

-- Mahindra Bolero
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000075', 'b0000000-0000-0000-0000-000000000020', 'B4', 'Diesel', 'Manual', 925000),
  ('c0000000-0000-0000-0000-000000000076', 'b0000000-0000-0000-0000-000000000020', 'B6', 'Diesel', 'Manual', 985000),
  ('c0000000-0000-0000-0000-000000000077', 'b0000000-0000-0000-0000-000000000020', 'B6(O)', 'Diesel', 'Manual', 1045000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000075', 1493, 76, 210, 16.0, 7, 302, 180, 1480, 2, true, false),
  ('c0000000-0000-0000-0000-000000000076', 1493, 76, 210, 16.0, 7, 302, 180, 1490, 2, true, false),
  ('c0000000-0000-0000-0000-000000000077', 1493, 76, 210, 16.0, 7, 302, 180, 1500, 2, true, false);

-- Kia Seltos
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000078', 'b0000000-0000-0000-0000-000000000021', 'HTE', 'Petrol', 'Manual', 1090000),
  ('c0000000-0000-0000-0000-000000000079', 'b0000000-0000-0000-0000-000000000021', 'HTK+', 'Petrol', 'Manual', 1275000),
  ('c0000000-0000-0000-0000-000000000080', 'b0000000-0000-0000-0000-000000000021', 'HTX+', 'Turbo Petrol', 'DCT', 1650000),
  ('c0000000-0000-0000-0000-000000000081', 'b0000000-0000-0000-0000-000000000021', 'GTX+', 'Diesel', 'Automatic', 1865000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000078', 1497, 115, 144, 16.8, 5, 433, 190, 1230, 2, true, false),
  ('c0000000-0000-0000-0000-000000000079', 1497, 115, 144, 16.8, 5, 433, 190, 1245, 4, true, true),
  ('c0000000-0000-0000-0000-000000000080', 1482, 160, 253, 18.2, 5, 433, 190, 1370, 6, true, true),
  ('c0000000-0000-0000-0000-000000000081', 1493, 116, 250, 20.8, 5, 433, 190, 1410, 6, true, true);

-- Kia Sonet
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000082', 'b0000000-0000-0000-0000-000000000022', 'HTE', 'Petrol', 'Manual', 790000),
  ('c0000000-0000-0000-0000-000000000083', 'b0000000-0000-0000-0000-000000000022', 'HTK+', 'Petrol', 'Manual', 935000),
  ('c0000000-0000-0000-0000-000000000084', 'b0000000-0000-0000-0000-000000000022', 'HTX+', 'Turbo Petrol', 'DCT', 1215000),
  ('c0000000-0000-0000-0000-000000000085', 'b0000000-0000-0000-0000-000000000022', 'GTX+', 'Diesel', 'Automatic', 1385000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000082', 1197, 83, 114, 18.2, 5, 392, 205, 1060, 2, true, false),
  ('c0000000-0000-0000-0000-000000000083', 1197, 83, 114, 18.2, 5, 392, 205, 1075, 4, true, false),
  ('c0000000-0000-0000-0000-000000000084', 998, 120, 172, 18.3, 5, 392, 205, 1130, 6, true, true),
  ('c0000000-0000-0000-0000-000000000085', 1493, 116, 250, 20.6, 5, 392, 205, 1185, 6, true, true);

-- Kia Carens
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000086', 'b0000000-0000-0000-0000-000000000023', 'Premium', 'Petrol', 'Manual', 1010000),
  ('c0000000-0000-0000-0000-000000000087', 'b0000000-0000-0000-0000-000000000023', 'Prestige', 'Petrol', 'Manual', 1160000),
  ('c0000000-0000-0000-0000-000000000088', 'b0000000-0000-0000-0000-000000000023', 'Luxury', 'Turbo Petrol', 'DCT', 1475000),
  ('c0000000-0000-0000-0000-000000000089', 'b0000000-0000-0000-0000-000000000023', 'Luxury+', 'Diesel', 'Automatic', 1685000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000086', 1497, 115, 144, 16.5, 7, 216, 195, 1295, 2, true, false),
  ('c0000000-0000-0000-0000-000000000087', 1497, 115, 144, 16.5, 7, 216, 195, 1310, 4, true, true),
  ('c0000000-0000-0000-0000-000000000088', 1482, 160, 253, 17.7, 7, 216, 195, 1395, 6, true, true),
  ('c0000000-0000-0000-0000-000000000089', 1493, 116, 250, 20.3, 7, 216, 195, 1445, 6, true, true);

-- Toyota Innova Crysta
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000090', 'b0000000-0000-0000-0000-000000000024', 'GX', 'Diesel', 'Manual', 1993000),
  ('c0000000-0000-0000-0000-000000000091', 'b0000000-0000-0000-0000-000000000024', 'VX', 'Diesel', 'Manual', 2260000),
  ('c0000000-0000-0000-0000-000000000092', 'b0000000-0000-0000-0000-000000000024', 'ZX', 'Diesel', 'Automatic', 2560000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000090', 2393, 150, 360, 15.1, 8, 300, 176, 1795, 2, true, true),
  ('c0000000-0000-0000-0000-000000000091', 2393, 150, 360, 15.1, 7, 300, 176, 1810, 4, true, true),
  ('c0000000-0000-0000-0000-000000000092', 2393, 150, 360, 13.7, 7, 300, 176, 1850, 7, true, true);

-- Toyota Fortuner
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000093', 'b0000000-0000-0000-0000-000000000025', '4x2 MT', 'Diesel', 'Manual', 3330000),
  ('c0000000-0000-0000-0000-000000000094', 'b0000000-0000-0000-0000-000000000025', '4x2 AT', 'Diesel', 'Automatic', 3690000),
  ('c0000000-0000-0000-0000-000000000095', 'b0000000-0000-0000-0000-000000000025', 'Legender 4x2 AT', 'Diesel', 'Automatic', 4100000),
  ('c0000000-0000-0000-0000-000000000096', 'b0000000-0000-0000-0000-000000000025', '4x4 AT', 'Diesel', 'Automatic', 4250000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000093', 2755, 204, 500, 14.4, 7, 296, 221, 2050, 4, true, true),
  ('c0000000-0000-0000-0000-000000000094', 2755, 204, 500, 12.4, 7, 296, 221, 2090, 6, true, true),
  ('c0000000-0000-0000-0000-000000000095', 2755, 204, 500, 12.4, 7, 296, 221, 2120, 7, true, true),
  ('c0000000-0000-0000-0000-000000000096', 2755, 204, 500, 11.8, 7, 296, 221, 2185, 7, true, true);

-- Toyota Urban Cruiser Hyryder
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000097', 'b0000000-0000-0000-0000-000000000026', 'E', 'Petrol', 'Manual', 1073000),
  ('c0000000-0000-0000-0000-000000000098', 'b0000000-0000-0000-0000-000000000026', 'S', 'Petrol', 'Manual', 1193000),
  ('c0000000-0000-0000-0000-000000000099', 'b0000000-0000-0000-0000-000000000026', 'V Hybrid', 'Hybrid', 'Automatic', 1590000),
  ('c0000000-0000-0000-0000-000000000100', 'b0000000-0000-0000-0000-000000000026', 'V Hybrid AT', 'Hybrid', 'Automatic', 1789000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000097', 1462, 103, 137, 21.1, 5, 375, 210, 1175, 2, true, false),
  ('c0000000-0000-0000-0000-000000000098', 1462, 103, 137, 21.1, 5, 375, 210, 1190, 4, true, true),
  ('c0000000-0000-0000-0000-000000000099', 1490, 116, 122, 27.9, 5, 375, 210, 1265, 6, true, true),
  ('c0000000-0000-0000-0000-000000000100', 1490, 116, 122, 27.9, 5, 375, 210, 1280, 6, true, true);

-- Honda City
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000101', 'b0000000-0000-0000-0000-000000000027', 'V', 'Petrol', 'Manual', 1125000),
  ('c0000000-0000-0000-0000-000000000102', 'b0000000-0000-0000-0000-000000000027', 'VX', 'Petrol', 'Manual', 1230000),
  ('c0000000-0000-0000-0000-000000000103', 'b0000000-0000-0000-0000-000000000027', 'ZX', 'Petrol', 'CVT', 1410000),
  ('c0000000-0000-0000-0000-000000000104', 'b0000000-0000-0000-0000-000000000027', 'ZX Hybrid', 'Hybrid', 'Automatic', 1895000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000101', 1498, 121, 145, 18.4, 5, 506, 165, 1095, 2, true, false),
  ('c0000000-0000-0000-0000-000000000102', 1498, 121, 145, 18.4, 5, 506, 165, 1110, 4, true, true),
  ('c0000000-0000-0000-0000-000000000103', 1498, 121, 145, 18.4, 5, 506, 165, 1130, 6, true, true),
  ('c0000000-0000-0000-0000-000000000104', 1498, 126, 253, 26.5, 5, 506, 165, 1195, 6, true, true);

-- Honda Elevate
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000105', 'b0000000-0000-0000-0000-000000000028', 'SV', 'Petrol', 'Manual', 1100000),
  ('c0000000-0000-0000-0000-000000000106', 'b0000000-0000-0000-0000-000000000028', 'V', 'Petrol', 'Manual', 1230000),
  ('c0000000-0000-0000-0000-000000000107', 'b0000000-0000-0000-0000-000000000028', 'VX', 'Petrol', 'CVT', 1430000),
  ('c0000000-0000-0000-0000-000000000108', 'b0000000-0000-0000-0000-000000000028', 'ZX', 'Petrol', 'CVT', 1590000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000105', 1498, 121, 145, 15.3, 5, 458, 200, 1260, 2, true, false),
  ('c0000000-0000-0000-0000-000000000106', 1498, 121, 145, 15.3, 5, 458, 200, 1275, 4, true, true),
  ('c0000000-0000-0000-0000-000000000107', 1498, 121, 145, 16.9, 5, 458, 200, 1295, 6, true, true),
  ('c0000000-0000-0000-0000-000000000108', 1498, 121, 145, 16.9, 5, 458, 200, 1310, 6, true, true);

-- MG Hector
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000109', 'b0000000-0000-0000-0000-000000000029', 'Style', 'Petrol', 'Manual', 1400000),
  ('c0000000-0000-0000-0000-000000000110', 'b0000000-0000-0000-0000-000000000029', 'Super', 'Petrol', 'Manual', 1560000),
  ('c0000000-0000-0000-0000-000000000111', 'b0000000-0000-0000-0000-000000000029', 'Smart', 'Turbo Petrol', 'CVT', 1750000),
  ('c0000000-0000-0000-0000-000000000112', 'b0000000-0000-0000-0000-000000000029', 'Savvy', 'Diesel', 'Manual', 1865000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000109', 1451, 143, 250, 14.1, 5, 587, 192, 1510, 4, true, true),
  ('c0000000-0000-0000-0000-000000000110', 1451, 143, 250, 14.1, 5, 587, 192, 1525, 6, true, true),
  ('c0000000-0000-0000-0000-000000000111', 1451, 143, 250, 13.9, 5, 587, 192, 1555, 6, true, true),
  ('c0000000-0000-0000-0000-000000000112', 1956, 170, 350, 16.5, 5, 587, 192, 1620, 6, true, true);

-- MG Astor
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000113', 'b0000000-0000-0000-0000-000000000030', 'Style', 'Petrol', 'Manual', 1000000),
  ('c0000000-0000-0000-0000-000000000114', 'b0000000-0000-0000-0000-000000000030', 'Super', 'Petrol', 'Manual', 1120000),
  ('c0000000-0000-0000-0000-000000000115', 'b0000000-0000-0000-0000-000000000030', 'Sharp', 'Turbo Petrol', 'Automatic', 1375000),
  ('c0000000-0000-0000-0000-000000000116', 'b0000000-0000-0000-0000-000000000030', 'Savvy', 'Turbo Petrol', 'Automatic', 1545000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000113', 1498, 110, 144, 15.6, 5, 448, 180, 1210, 2, true, false),
  ('c0000000-0000-0000-0000-000000000114', 1498, 110, 144, 15.6, 5, 448, 180, 1225, 4, true, true),
  ('c0000000-0000-0000-0000-000000000115', 1349, 140, 220, 15.8, 5, 448, 180, 1290, 6, true, true),
  ('c0000000-0000-0000-0000-000000000116', 1349, 140, 220, 15.8, 5, 448, 180, 1305, 6, true, true);

-- Skoda Slavia
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000117', 'b0000000-0000-0000-0000-000000000031', 'Active', 'Petrol', 'Manual', 1069000),
  ('c0000000-0000-0000-0000-000000000118', 'b0000000-0000-0000-0000-000000000031', 'Ambition', 'Petrol', 'Manual', 1279000),
  ('c0000000-0000-0000-0000-000000000119', 'b0000000-0000-0000-0000-000000000031', 'Style', 'Turbo Petrol', 'Automatic', 1619000),
  ('c0000000-0000-0000-0000-000000000120', 'b0000000-0000-0000-0000-000000000031', 'L&K', 'Turbo Petrol', 'Automatic', 1859000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000117', 999, 115, 178, 19.6, 5, 521, 179, 1100, 2, true, true),
  ('c0000000-0000-0000-0000-000000000118', 999, 115, 178, 19.6, 5, 521, 179, 1115, 4, true, true),
  ('c0000000-0000-0000-0000-000000000119', 1498, 150, 250, 18.7, 5, 521, 179, 1210, 6, true, true),
  ('c0000000-0000-0000-0000-000000000120', 1498, 150, 250, 18.7, 5, 521, 179, 1230, 6, true, true);

-- Skoda Kushaq
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000121', 'b0000000-0000-0000-0000-000000000032', 'Active', 'Petrol', 'Manual', 1119000),
  ('c0000000-0000-0000-0000-000000000122', 'b0000000-0000-0000-0000-000000000032', 'Ambition', 'Petrol', 'Manual', 1339000),
  ('c0000000-0000-0000-0000-000000000123', 'b0000000-0000-0000-0000-000000000032', 'Style', 'Turbo Petrol', 'Automatic', 1699000),
  ('c0000000-0000-0000-0000-000000000124', 'b0000000-0000-0000-0000-000000000032', 'Monte Carlo', 'Turbo Petrol', 'Automatic', 1849000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000121', 999, 115, 178, 18.2, 5, 385, 188, 1135, 2, true, true),
  ('c0000000-0000-0000-0000-000000000122', 999, 115, 178, 18.2, 5, 385, 188, 1150, 4, true, true),
  ('c0000000-0000-0000-0000-000000000123', 1498, 150, 250, 17.6, 5, 385, 188, 1260, 6, true, true),
  ('c0000000-0000-0000-0000-000000000124', 1498, 150, 250, 17.6, 5, 385, 188, 1275, 6, true, true);

-- Volkswagen Virtus
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000125', 'b0000000-0000-0000-0000-000000000033', 'Comfortline', 'Petrol', 'Manual', 1126000),
  ('c0000000-0000-0000-0000-000000000126', 'b0000000-0000-0000-0000-000000000033', 'Highline', 'Petrol', 'Manual', 1339000),
  ('c0000000-0000-0000-0000-000000000127', 'b0000000-0000-0000-0000-000000000033', 'Topline', 'Turbo Petrol', 'Automatic', 1639000),
  ('c0000000-0000-0000-0000-000000000128', 'b0000000-0000-0000-0000-000000000033', 'GT Plus', 'Turbo Petrol', 'Automatic', 1890000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000125', 999, 115, 178, 19.4, 5, 521, 179, 1105, 2, true, true),
  ('c0000000-0000-0000-0000-000000000126', 999, 115, 178, 19.4, 5, 521, 179, 1120, 4, true, true),
  ('c0000000-0000-0000-0000-000000000127', 1498, 150, 250, 18.5, 5, 521, 179, 1215, 6, true, true),
  ('c0000000-0000-0000-0000-000000000128', 1498, 150, 250, 18.5, 5, 521, 179, 1235, 6, true, true);

-- Volkswagen Taigun
INSERT INTO public.variants (id, model_id, name, fuel_type, transmission, ex_showroom_price) VALUES
  ('c0000000-0000-0000-0000-000000000129', 'b0000000-0000-0000-0000-000000000034', 'Comfortline', 'Petrol', 'Manual', 1149000),
  ('c0000000-0000-0000-0000-000000000130', 'b0000000-0000-0000-0000-000000000034', 'Highline', 'Petrol', 'Manual', 1379000),
  ('c0000000-0000-0000-0000-000000000131', 'b0000000-0000-0000-0000-000000000034', 'Topline', 'Turbo Petrol', 'Automatic', 1719000),
  ('c0000000-0000-0000-0000-000000000132', 'b0000000-0000-0000-0000-000000000034', 'GT Plus', 'Turbo Petrol', 'Automatic', 1900000);
INSERT INTO public.specs (variant_id, engine_cc, power_hp, torque_nm, mileage_kmpl, seating_capacity, boot_space_liters, ground_clearance_mm, kerb_weight_kg, airbags_count, has_abs, has_esc) VALUES
  ('c0000000-0000-0000-0000-000000000129', 999, 115, 178, 17.9, 5, 385, 188, 1140, 2, true, true),
  ('c0000000-0000-0000-0000-000000000130', 999, 115, 178, 17.9, 5, 385, 188, 1155, 4, true, true),
  ('c0000000-0000-0000-0000-000000000131', 1498, 150, 250, 17.2, 5, 385, 188, 1265, 6, true, true),
  ('c0000000-0000-0000-0000-000000000132', 1498, 150, 250, 17.2, 5, 385, 188, 1280, 6, true, true);

-- ============================================================
-- SAFETY RATINGS (NCAP - model level)
-- ============================================================
INSERT INTO public.safety_ratings (model_id, ncap_rating) VALUES
  ('b0000000-0000-0000-0000-000000000001', 2),  -- Swift
  ('b0000000-0000-0000-0000-000000000002', 3),  -- Baleno
  ('b0000000-0000-0000-0000-000000000003', 4),  -- Brezza
  ('b0000000-0000-0000-0000-000000000004', 3),  -- Ertiga
  ('b0000000-0000-0000-0000-000000000005', 4),  -- Grand Vitara
  ('b0000000-0000-0000-0000-000000000006', 3),  -- i20
  ('b0000000-0000-0000-0000-000000000007', 3),  -- Venue
  ('b0000000-0000-0000-0000-000000000008', 4),  -- Creta
  ('b0000000-0000-0000-0000-000000000009', 4),  -- Verna
  ('b0000000-0000-0000-0000-000000000010', 5),  -- Tucson
  ('b0000000-0000-0000-0000-000000000011', 5),  -- Punch
  ('b0000000-0000-0000-0000-000000000012', 5),  -- Nexon
  ('b0000000-0000-0000-0000-000000000013', 5),  -- Harrier
  ('b0000000-0000-0000-0000-000000000014', 5),  -- Safari
  ('b0000000-0000-0000-0000-000000000015', 5),  -- Altroz
  ('b0000000-0000-0000-0000-000000000016', 5),  -- XUV700
  ('b0000000-0000-0000-0000-000000000017', 4),  -- Thar
  ('b0000000-0000-0000-0000-000000000018', 5),  -- Scorpio N
  ('b0000000-0000-0000-0000-000000000019', 5),  -- XUV300
  ('b0000000-0000-0000-0000-000000000020', 4),  -- Bolero
  ('b0000000-0000-0000-0000-000000000021', 2),  -- Seltos
  ('b0000000-0000-0000-0000-000000000022', 3),  -- Sonet
  ('b0000000-0000-0000-0000-000000000023', 3),  -- Carens
  ('b0000000-0000-0000-0000-000000000024', 4),  -- Innova Crysta
  ('b0000000-0000-0000-0000-000000000025', 5),  -- Fortuner
  ('b0000000-0000-0000-0000-000000000026', 4),  -- Urban Cruiser Hyryder
  ('b0000000-0000-0000-0000-000000000027', 4),  -- City
  ('b0000000-0000-0000-0000-000000000028', 5),  -- Elevate
  ('b0000000-0000-0000-0000-000000000029', 5),  -- Hector
  ('b0000000-0000-0000-0000-000000000030', 5),  -- Astor
  ('b0000000-0000-0000-0000-000000000031', 5),  -- Slavia
  ('b0000000-0000-0000-0000-000000000032', 5),  -- Kushaq
  ('b0000000-0000-0000-0000-000000000033', 5),  -- Virtus
  ('b0000000-0000-0000-0000-000000000034', 5);  -- Taigun
