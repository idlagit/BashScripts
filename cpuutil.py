from multiprocessing import Pool
from multiprocessing import cpu_count

def f(x):
        while True:
            x*x

if __name__ == '__main__':
        processes = cpu_count()
        print ('_' * 20)
        print ('running load on CPU')
        print ('Utilizing %d cores' % processes)
        print ('_' * 20)
        pool = Pool(processes)
        pool.map(f, range(processes))