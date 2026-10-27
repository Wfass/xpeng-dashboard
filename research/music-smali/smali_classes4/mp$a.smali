.class public final enum Lmp$a;
.super Ljava/lang/Enum;
.source "ShapeTrimPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmp$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmp$a;

.field public static final enum INDIVIDUALLY:Lmp$a;

.field public static final enum SIMULTANEOUSLY:Lmp$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lmp$a;

    const/4 v1, 0x0

    const-string v2, "SIMULTANEOUSLY"

    invoke-direct {v0, v2, v1}, Lmp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmp$a;->SIMULTANEOUSLY:Lmp$a;

    .line 13
    new-instance v0, Lmp$a;

    const/4 v2, 0x1

    const-string v3, "INDIVIDUALLY"

    invoke-direct {v0, v3, v2}, Lmp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmp$a;->INDIVIDUALLY:Lmp$a;

    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [Lmp$a;

    sget-object v3, Lmp$a;->SIMULTANEOUSLY:Lmp$a;

    aput-object v3, v0, v1

    sget-object v1, Lmp$a;->INDIVIDUALLY:Lmp$a;

    aput-object v1, v0, v2

    sput-object v0, Lmp$a;->$VALUES:[Lmp$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lmp$a;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 20
    sget-object p0, Lmp$a;->INDIVIDUALLY:Lmp$a;

    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown trim path type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    sget-object p0, Lmp$a;->SIMULTANEOUSLY:Lmp$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmp$a;
    .locals 1

    .line 11
    const-class v0, Lmp$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmp$a;

    return-object p0
.end method

.method public static values()[Lmp$a;
    .locals 1

    .line 11
    sget-object v0, Lmp$a;->$VALUES:[Lmp$a;

    invoke-virtual {v0}, [Lmp$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmp$a;

    return-object v0
.end method
