.class public Lcom/xiaopeng/lib/utils/a/a;
.super Ljava/lang/Object;
.source "CommonConfig.java"


# static fields
.field public static final WY:Ljava/lang/String;

.field public static WZ:Ljava/lang/String;

.field public static Xa:Ljava/lang/String;

.field public static final Xb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "car.xmart.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/a/a;->WY:Ljava/lang/String;

    .line 56
    const-string v0, "https://10.0.13.28:8553"

    const-string v1, "https://xmart.xiaopeng.com"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/a/b;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    .line 57
    const-string v0, "https://10.0.13.28:8556"

    const-string v1, "https://xmart-eu.xiaopeng.com"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/a/b;->Y(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/a/a;->Xa:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/biz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/utils/a/a;->Xb:Ljava/lang/String;

    return-void
.end method
