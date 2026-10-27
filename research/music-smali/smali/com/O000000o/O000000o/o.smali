.class public abstract enum Lcom/O000000o/O000000o/o;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/O000000o/O000000o/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum O000000o:Lcom/O000000o/O000000o/o;

.field public static final enum O00000Oo:Lcom/O000000o/O000000o/o;

.field private static final synthetic O00000o0:[Lcom/O000000o/O000000o/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/O000000o/O000000o/o$1;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/O000000o/O000000o/o$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/O000000o/O000000o/o;->O000000o:Lcom/O000000o/O000000o/o;

    new-instance v0, Lcom/O000000o/O000000o/o$2;

    const/4 v2, 0x1

    const-string v3, "STRING"

    invoke-direct {v0, v3, v2}, Lcom/O000000o/O000000o/o$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/O000000o/O000000o/o;->O00000Oo:Lcom/O000000o/O000000o/o;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/O000000o/O000000o/o;

    sget-object v3, Lcom/O000000o/O000000o/o;->O000000o:Lcom/O000000o/O000000o/o;

    aput-object v3, v0, v1

    sget-object v1, Lcom/O000000o/O000000o/o;->O00000Oo:Lcom/O000000o/O000000o/o;

    aput-object v1, v0, v2

    sput-object v0, Lcom/O000000o/O000000o/o;->O00000o0:[Lcom/O000000o/O000000o/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/O000000o/O000000o/o$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/O000000o/O000000o/o;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/O000000o/O000000o/o;
    .locals 1

    const-class v0, Lcom/O000000o/O000000o/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/O000000o/O000000o/o;

    return-object p0
.end method

.method public static values()[Lcom/O000000o/O000000o/o;
    .locals 1

    sget-object v0, Lcom/O000000o/O000000o/o;->O00000o0:[Lcom/O000000o/O000000o/o;

    invoke-virtual {v0}, [Lcom/O000000o/O000000o/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/O000000o/O000000o/o;

    return-object v0
.end method
