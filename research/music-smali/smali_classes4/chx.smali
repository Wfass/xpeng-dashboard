.class public Lchx;
.super Lchn;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lchn;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lchr;)Lchr;
    .locals 4

    new-instance v0, Lchy;

    new-instance v1, Lcix;

    iget v2, p0, Lchx;->a:I

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcix;-><init>(ZI)V

    invoke-direct {v0, p1, v1}, Lchy;-><init>(Lchr;Lciy;)V

    return-object v0
.end method
