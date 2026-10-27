.class public abstract enum Lcom/O000000o/O000000o/O000Oo0;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/O000000o/O000000o/O000Oo0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum O000000o:Lcom/O000000o/O000000o/O000Oo0;

.field public static final enum O00000Oo:Lcom/O000000o/O000000o/O000Oo0;

.field private static final synthetic O00000o0:[Lcom/O000000o/O000000o/O000Oo0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/O000000o/O000000o/O000Oo0$1;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/O000000o/O000000o/O000Oo0$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/O000000o/O000000o/O000Oo0;->O000000o:Lcom/O000000o/O000000o/O000Oo0;

    new-instance v0, Lcom/O000000o/O000000o/O000Oo0$2;

    const-string v1, "STRING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/O000000o/O000000o/O000Oo0$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/O000000o/O000000o/O000Oo0;->O00000Oo:Lcom/O000000o/O000000o/O000Oo0;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/O000000o/O000000o/O000Oo0;

    sget-object v1, Lcom/O000000o/O000000o/O000Oo0;->O000000o:Lcom/O000000o/O000000o/O000Oo0;

    aput-object v1, v0, v2

    sget-object v1, Lcom/O000000o/O000000o/O000Oo0;->O00000Oo:Lcom/O000000o/O000000o/O000Oo0;

    aput-object v1, v0, v3

    sput-object v0, Lcom/O000000o/O000000o/O000Oo0;->O00000o0:[Lcom/O000000o/O000000o/O000Oo0;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/O000000o/O000000o/O000Oo0$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/O000000o/O000000o/O000Oo0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/O000000o/O000000o/O000Oo0;
    .locals 1

    const-class v0, Lcom/O000000o/O000000o/O000Oo0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/O000000o/O000000o/O000Oo0;

    return-object p0
.end method

.method public static values()[Lcom/O000000o/O000000o/O000Oo0;
    .locals 1

    sget-object v0, Lcom/O000000o/O000000o/O000Oo0;->O00000o0:[Lcom/O000000o/O000000o/O000Oo0;

    invoke-virtual {v0}, [Lcom/O000000o/O000000o/O000Oo0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/O000000o/O000000o/O000Oo0;

    return-object v0
.end method


# virtual methods
.method public abstract O000000o(Ljava/lang/Long;)Lcom/O000000o/O000000o/O00oOooO;
.end method
