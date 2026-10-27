.class public Lcom/xiaopeng/carcontrol/GlobalConstant$URL;
.super Ljava/lang/Object;
.source "GlobalConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/GlobalConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URL"
.end annotation


# static fields
.field public static final GET_PLATE:Ljava/lang/String;

.field public static final HOST:Ljava/lang/String;

.field public static final MAINTENANCE_ADVICE:Ljava/lang/String;

.field public static final MAINTENANCE_LAST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2122
    sget-object v0, Lcom/xiaopeng/lib/http/CommonUtils;->HTTP_HOST:Ljava/lang/String;

    sput-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$URL;->HOST:Ljava/lang/String;

    .line 2124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/voss/public/v1/module/maintenance/items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/carcontrol/GlobalConstant$URL;->MAINTENANCE_LAST:Ljava/lang/String;

    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/voss/public/v1/module/maintenance/advice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/carcontrol/GlobalConstant$URL;->MAINTENANCE_ADVICE:Ljava/lang/String;

    .line 2127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/biz/v5/cdu/getPlateNo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/carcontrol/GlobalConstant$URL;->GET_PLATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
