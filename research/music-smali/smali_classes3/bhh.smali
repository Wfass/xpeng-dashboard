.class public Lbhh;
.super Lbhi;
.source "KugouDown.java"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v0

    sput v0, Lbhh;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lbhi;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "com.kugou.android.auto.xiaopeng"

    return-object v0
.end method

.method protected b()I
    .locals 1

    .line 28
    sget v0, Lbhh;->a:I

    return v0
.end method

.method protected c()I
    .locals 1

    .line 36
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v0

    return v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "kugoudown"

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "KugouDown"

    return-object v0
.end method
