using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PC4P3
{
    public abstract class Viaje
    {
        public abstract double DsctoPasaje();
        public abstract double DsctoAuto();
    }

    public class Normal : Viaje
    {
        public override double DsctoAuto()
        {
            return 0;
        }

        public override double DsctoPasaje()
        {
            return 0;
        }
    }

    public class Silver : Viaje
    {
        public override double DsctoAuto()
        {
            return 0.02;
        }

        public override double DsctoPasaje()
        {
            return 0.05;
        }
    }

    public class Gold : Viaje
    {
        public override double DsctoAuto()
        {
            return 0.03;
        }

        public override double DsctoPasaje()
        {
            return 0.07;
        }
    }

    public class Platinum : Viaje
    {
        public override double DsctoAuto()
        {
            return 0.05;
        }

        public override double DsctoPasaje()
        {
            return 0.09;
        }
    }

    public abstract class AbstractDecorator : Viaje
    {
        protected Viaje myDecorator;

        public AbstractDecorator(Viaje v)
        {
            myDecorator = v;
        }

        public override double DsctoAuto()
        {
            return myDecorator.DsctoAuto();
        }

        public override double DsctoPasaje()
        {
            return myDecorator.DsctoPasaje();
        }
    }

    public class ViajeConDescuento : AbstractDecorator
    {
        public ViajeConDescuento(Viaje v) : base(v)
        {
        }

        public override double DsctoAuto()
        {
            return myDecorator.DsctoAuto();
        }

        public override double DsctoPasaje()
        {
            return myDecorator.DsctoPasaje();
        }
    }
}
