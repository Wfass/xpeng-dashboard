.class public final enum Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;
.super Ljava/lang/Enum;
.source "ACRCloudConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acrcloud/rec/ACRCloudConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

.field public static final enum HTTP:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

.field public static final enum HTTPS:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    const-string v1, "HTTP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;->HTTP:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    new-instance v0, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    const-string v1, "HTTPS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;->HTTPS:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;->HTTP:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;->HTTPS:Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    aput-object v1, v0, v3

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;->$VALUES:[Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    return-object v0
.end method

.method public static values()[Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;
    .locals 1

    .line 48
    sget-object v0, Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;->$VALUES:[Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    invoke-virtual {v0}, [Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acrcloud/rec/ACRCloudConfig$NetworkProtocol;

    return-object v0
.end method
