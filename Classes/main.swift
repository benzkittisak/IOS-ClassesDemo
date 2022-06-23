
// เรียนเกี่ยวกับคลาสใน Swift
/**
 Classes กับ Struct ต่างกันตรงไหน ?
 Struct เป็น Value Type นั่นคือเป็นการ copy ค่าเวลามีการเปลี่ยนแปลง ไม่ได้เปลี่ยนแปลงบนตัวเองอย่าง Class ที่เป็น Reference Type ที่เมื่อ class เปลี่ยนค่าในตัวเองยังคงใช้ reference เดิมอยู่
 ทำให้ Struct เวลามีการแก้ไขค่าภายหลัง การประกาศตัวแปรจะต้องใช้ var แทน let
 
 นอกจาก Struct กับ Class จะต่างกันที่ value กับ refence type แล้ว ยังมีความแตกต่างอย่างอื่นอีก ที่มีเฉพาะใน Class ดังนี้
 - ความสามารถในการ inherit จาก parent
 - การใช้ deinit ในการ deinitialize
 - การมีมากกว่า 1 reference ชี้มาที่ instance
 -  type casting เป็น parent หรือ subclass (แน่นอน เพราะว่า Struct ไม่สามารถ inherit ได้แบบ class)
 */

let skeleton = Enemy(health: 10, attackStrength: 10)
print(skeleton.health)

let dragon = Dragon(health: 7000, attackStrength: 200)
//dragon.setHealth(newHealth: 7000)
print(dragon.health)


skeleton.takeDamage(amount: 5)
let skeleton2 = skeleton

print("Skeleton 1 health = \(skeleton.health)")
print("Skeleton 2 health = \(skeleton2.health)")

//  จะเห็นว่าผลลัพธ์ของเลือดก็จะเป็น 5 เท่ากันทั้ง 2 เพราะจริง ๆ มันคือ object ตัวเดียวกันนี่แหละ แค่เรียกชื่อคนละชื่อกันเฉย ๆ สิ่งนี้ struct ทำไม่ได้นาจา
//  ถ้าใช้ struct แล้วใช้โค้ดแบบบรรทัด 24 สิ่งที่เกิดขึ้นคือน้องจะ copy ร่างโคลนขึ้นมาแทนแล้วแยกกันไปเลย

//  เมื่อไหร่ที่ควรจะใช้ class ล่ะ ?
//  เราจะใช้ class ก็ต่อเมื่อเราต้องการ การสืบทอดคุณสมบัติของ class และต้องการทำงานร่วมกับ Object-C
//  ถ้าไม่ต้องการใช้อะไนแบบนั้นเราจะใช้ struct เป็นหลัก
