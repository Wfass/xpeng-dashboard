.class Landroid/pso/XpPso$E28OtaPackhead;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pso/XpPso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "E28OtaPackhead"
.end annotation


# instance fields
.field cert_id:[B

.field datalen:J

.field datasha256:[B

.field headsha256:[B

.field key_id:[B

.field sign:[B

.field final synthetic this$0:Landroid/pso/XpPso;

.field timestamp:J

.field vin:[B


# direct methods
.method private constructor <init>(Landroid/pso/XpPso;)V
    .locals 0

    iput-object p1, p0, Landroid/pso/XpPso$E28OtaPackhead;->this$0:Landroid/pso/XpPso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
