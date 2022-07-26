SELECT u.id, u.name, c.name as city FROM users u JOIN cities c ON u."cityId" = c.id WHERE c.name = 'Rio de Janeiro';
 
SELECT t.id,  w.name as writer, r.name as recipient, t.message from testimonials t JOIN users w ON t."writerId" = w.id JOIN users r ON t."recipientId" = r.id ORDER BY t.id ASC;
  
SELECT u.name, u.id, c.name as course, s.name as school,
e."endDate" FROM educations e JOIN users u ON u.id = e."userId"
JOIN courses c ON c.id = e."courseId" 
JOIN schools s ON s.id = e."courseId" WHERE u.id = 30 AND e.status = 'finished';
