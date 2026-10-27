.class public final Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;
.super Ljava/lang/Object;
.source "CheckDetailItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCategory:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

.field private mKey:Ljava/lang/String;

.field private mLevel:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->mLevel:I

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->mCategory:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;
    .locals 2

    .line 74
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;-><init>(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$1;)V

    return-object v0
.end method

.method public category(Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->mCategory:Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckCategoryItem;

    return-object p0
.end method

.method public key(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public level(I)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 64
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->mLevel:I

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
