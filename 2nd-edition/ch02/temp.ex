#chapter2

fall_velocity = fn (distance) -> :math.sqrt(2 * 9.8 * distance) end
fall_velocity.(20)
fall_velocity.(200)
fall_velocity.(2000)

mps_to_mph = fn mps -> 2.23693629 * mps end
mps_to_mph.(19.79898987322333)
mps_to_mph.(62.609903369994115)
mps_to_mph.(197.9898987322333)

mps_to_kph = fn(mps) -> 3.6 * mps end
mps_to_kph.(19.798989873222333)
mps_to_kph.(62.60990336994011)
mps_to_kph.(197.9898987322333)

mps_to_kph.(fall_velocity)

fall_velocity = &(:math.sqrt(2 * 9.8 * &1))

iex -S mix : 빌드후 아래의 명령어
fun = &Drop.fall_velocity/1
    # Drop모듈.fail_velocity함수/1개의 argument / 2개의 argument일시 다른 함수 args가 2개인 함수를 호출
fun.(20)

#? ex6-defualt
Drop.fall_velocity(20, 9.8)
Drop.fall_velocity(20, 1.6)
Drop.fall_velocity(20)

#? ex8-doc-function
h Drop.fall.velocity

#? ex9-doc-spec
s(Drop.fall_velocity)

#? ex10-doc-moudule
h Drop
'''
