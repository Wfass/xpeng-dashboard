.class public Lbmr;
.super Ljava/lang/Object;
.source "ProgramDataMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmr$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:F

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmr;->a:Ljava/util/List;

    const-string v0, "begin"

    .line 22
    iput-object v0, p0, Lbmr;->b:Ljava/lang/String;

    const-string v0, "JourneyMusicInfo"

    .line 24
    iput-object v0, p0, Lbmr;->c:Ljava/lang/String;

    const-string v0, "readingSpeed"

    .line 26
    iput-object v0, p0, Lbmr;->d:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    .line 28
    iput v0, p0, Lbmr;->e:F

    const/16 v0, 0x8

    .line 30
    iput v0, p0, Lbmr;->f:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lbmr;->g:I

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lbmr;->h:I

    return-void
.end method

.method public static a()Lbmr;
    .locals 1

    .line 41
    sget-object v0, Lbmr$a;->a:Lbmr;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 76
    iput p1, p0, Lbmr;->e:F

    const-string v0, "program_speed"

    .line 77
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;F)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lbmr;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lbmr;->a:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lbmr;->a:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lbmr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 64
    iget-object v0, p0, Lbmr;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "begin"

    .line 65
    iput-object v0, p0, Lbmr;->b:Ljava/lang/String;

    return-void
.end method

.method public e()F
    .locals 2

    .line 69
    iget v0, p0, Lbmr;->e:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "program_speed"

    .line 70
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lbmr;->e:F

    .line 72
    :cond_0
    iget v0, p0, Lbmr;->e:F

    return v0
.end method
