.class Landroid/pso/XpPso$E28decKeybin;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pso/XpPso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "E28decKeybin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pso/XpPso$E28decKeybin$CertInfo;,
        Landroid/pso/XpPso$E28decKeybin$KeyInfo;
    }
.end annotation


# instance fields
.field CommKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/pso/XpPso$E28decKeybin$KeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field CommSignCert:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/pso/XpPso$E28decKeybin$CertInfo;",
            ">;"
        }
    .end annotation
.end field

.field OwnKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/pso/XpPso$E28decKeybin$KeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field OwnSignCert:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/pso/XpPso$E28decKeybin$CertInfo;",
            ">;"
        }
    .end annotation
.end field

.field result:I

.field final synthetic this$0:Landroid/pso/XpPso;


# direct methods
.method private constructor <init>(Landroid/pso/XpPso;)V
    .locals 0

    iput-object p1, p0, Landroid/pso/XpPso$E28decKeybin;->this$0:Landroid/pso/XpPso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
