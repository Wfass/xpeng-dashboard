.class public final enum Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
.super Ljava/lang/Enum;
.source "ObjectPermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/oss/model/ObjectPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum Default:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum Private:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum PublicRead:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

.field public static final enum Unknown:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;


# instance fields
.field private permissionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 31
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const-string v1, "Private"

    const-string v2, "private"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Private:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 37
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const-string v1, "PublicRead"

    const-string v2, "public-read"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicRead:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 42
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const-string v1, "PublicReadWrite"

    const-string v2, "public-read-write"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 48
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const-string v1, "Default"

    const-string v2, "default"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Default:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 53
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const-string v1, "Unknown"

    const-string v2, ""

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Unknown:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Private:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicRead:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Default:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Unknown:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->$VALUES:[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "permissionString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->permissionString:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static parsePermission(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Private:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicRead:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->PublicReadWrite:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Default:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 63
    .local v0, "knownPermissions":[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 64
    .local v3, "permission":Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    iget-object v4, v3, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->permissionString:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    return-object v3

    .line 63
    .end local v3    # "permission":Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    sget-object v1, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->Unknown:Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;
    .locals 1

    .line 25
    sget-object v0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->$VALUES:[Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/oss/model/ObjectPermission;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/ObjectPermission;->permissionString:Ljava/lang/String;

    return-object v0
.end method
