.class public final enum Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;
.super Ljava/lang/Enum;
.source "ACRCloudConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acrcloud/rec/ACRCloudConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecorderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

.field public static final enum DEFAULT:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

.field public static final enum RECORDER_USER:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

.field public static final enum TINYALSA:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

.field public static final enum USER:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 65
    new-instance v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->USER:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    new-instance v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    const-string v1, "DEFAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->DEFAULT:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    new-instance v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    const-string v1, "TINYALSA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->TINYALSA:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    new-instance v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    const-string v1, "RECORDER_USER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->RECORDER_USER:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->USER:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->DEFAULT:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->TINYALSA:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->RECORDER_USER:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->$VALUES:[Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    const-class v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    return-object v0
.end method

.method public static values()[Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;
    .locals 1

    .line 64
    sget-object v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->$VALUES:[Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    invoke-virtual {v0}, [Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    return-object v0
.end method
