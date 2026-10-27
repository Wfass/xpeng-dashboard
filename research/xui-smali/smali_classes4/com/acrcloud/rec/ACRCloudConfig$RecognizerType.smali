.class public final enum Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;
.super Ljava/lang/Enum;
.source "ACRCloudConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acrcloud/rec/ACRCloudConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecognizerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

.field public static final enum AUDIO:Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

.field public static final enum BOTH:Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

.field public static final enum HUMMING:Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 57
    new-instance v0, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;->AUDIO:Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    new-instance v0, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    const-string v1, "HUMMING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;->HUMMING:Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    new-instance v0, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    const-string v1, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;->BOTH:Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;->AUDIO:Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;->HUMMING:Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;->BOTH:Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;->$VALUES:[Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 56
    const-class v0, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    return-object v0
.end method

.method public static values()[Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;
    .locals 1

    .line 56
    sget-object v0, Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;->$VALUES:[Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    invoke-virtual {v0}, [Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acrcloud/rec/ACRCloudConfig$RecognizerType;

    return-object v0
.end method
