.class public final enum Lcom/irdeto/securesdk/FileIndex;
.super Ljava/lang/Enum;
.source "FileIndex.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/irdeto/securesdk/FileIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/irdeto/securesdk/FileIndex;

.field public static final enum ISF_SS_FileIndex:Lcom/irdeto/securesdk/FileIndex;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/irdeto/securesdk/FileIndex;

    const-string v1, "ISF_SS_FileIndex"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/irdeto/securesdk/FileIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/irdeto/securesdk/FileIndex;->ISF_SS_FileIndex:Lcom/irdeto/securesdk/FileIndex;

    new-array v1, v3, [Lcom/irdeto/securesdk/FileIndex;

    aput-object v0, v1, v2

    sput-object v1, Lcom/irdeto/securesdk/FileIndex;->$VALUES:[Lcom/irdeto/securesdk/FileIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/irdeto/securesdk/FileIndex;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/irdeto/securesdk/FileIndex;
    .locals 1

    const-class v0, Lcom/irdeto/securesdk/FileIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/irdeto/securesdk/FileIndex;

    return-object p0
.end method

.method public static values()[Lcom/irdeto/securesdk/FileIndex;
    .locals 1

    sget-object v0, Lcom/irdeto/securesdk/FileIndex;->$VALUES:[Lcom/irdeto/securesdk/FileIndex;

    invoke-virtual {v0}, [Lcom/irdeto/securesdk/FileIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/irdeto/securesdk/FileIndex;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/irdeto/securesdk/FileIndex;->index:I

    return v0
.end method
