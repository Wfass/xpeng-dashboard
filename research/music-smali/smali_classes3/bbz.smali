.class public Lbbz;
.super Ljava/lang/Object;
.source "MainPageModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbbz$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lbbz;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lbbz$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lbbz;-><init>()V

    return-void
.end method

.method public static a()Lbbz;
    .locals 1

    .line 24
    sget-object v0, Lbbz$a;->a:Lbbz;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainPageModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput p1, p0, Lbbz;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 39
    iput-object p1, p0, Lbbz;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 41
    new-instance p2, Lary;

    invoke-direct {p2, p1}, Lary;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 2

    .line 53
    iget v0, p0, Lbbz;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 54
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_INDEX"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbbz;->b:I

    .line 56
    :cond_0
    iget v0, p0, Lbbz;->b:I

    return v0
.end method
