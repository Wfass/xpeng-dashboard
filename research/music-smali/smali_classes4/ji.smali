.class public final enum Lji;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lji;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum O000000o:Lji;

.field public static final enum O00000Oo:Lji;

.field public static final enum O00000o:Lji;

.field public static final enum O00000o0:Lji;

.field public static final enum O00000oO:Lji;

.field public static final enum O00000oo:Lji;

.field public static final enum O0000O0o:Lji;

.field public static final enum O0000OOo:Lji;

.field public static final enum O0000Oo:Lji;

.field public static final enum O0000Oo0:Lji;

.field private static final synthetic O0000OoO:[Lji;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lji;

    const/4 v1, 0x0

    const-string v2, "BEGIN_ARRAY"

    invoke-direct {v0, v2, v1}, Lji;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lji;->O000000o:Lji;

    new-instance v0, Lji;

    const/4 v2, 0x1

    const-string v3, "END_ARRAY"

    invoke-direct {v0, v3, v2}, Lji;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lji;->O00000Oo:Lji;

    new-instance v0, Lji;

    const/4 v3, 0x2

    const-string v4, "BEGIN_OBJECT"

    invoke-direct {v0, v4, v3}, Lji;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lji;->O00000o0:Lji;

    new-instance v0, Lji;

    const/4 v4, 0x3

    const-string v5, "END_OBJECT"

    invoke-direct {v0, v5, v4}, Lji;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lji;->O00000o:Lji;

    new-instance v0, Lji;

    const/4 v5, 0x4

    const-string v6, "NAME"

    invoke-direct {v0, v6, v5}, Lji;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lji;->O00000oO:Lji;

    new-instance v0, Lji;

    const/4 v6, 0x5

    const-string v7, "STRING"

    invoke-direct {v0, v7, v6}, Lji;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lji;->O00000oo:Lji;

    new-instance v0, Lji;

    const/4 v7, 0x6

    const-string v8, "NUMBER"

    invoke-direct {v0, v8, v7}, Lji;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lji;->O0000O0o:Lji;

    new-instance v0, Lji;

    const/4 v8, 0x7

    const-string v9, "BOOLEAN"

    invoke-direct {v0, v9, v8}, Lji;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lji;->O0000OOo:Lji;

    new-instance v0, Lji;

    const/16 v9, 0x8

    const-string v10, "NULL"

    invoke-direct {v0, v10, v9}, Lji;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lji;->O0000Oo0:Lji;

    new-instance v0, Lji;

    const/16 v10, 0x9

    const-string v11, "END_DOCUMENT"

    invoke-direct {v0, v11, v10}, Lji;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lji;->O0000Oo:Lji;

    const/16 v0, 0xa

    new-array v0, v0, [Lji;

    sget-object v11, Lji;->O000000o:Lji;

    aput-object v11, v0, v1

    sget-object v1, Lji;->O00000Oo:Lji;

    aput-object v1, v0, v2

    sget-object v1, Lji;->O00000o0:Lji;

    aput-object v1, v0, v3

    sget-object v1, Lji;->O00000o:Lji;

    aput-object v1, v0, v4

    sget-object v1, Lji;->O00000oO:Lji;

    aput-object v1, v0, v5

    sget-object v1, Lji;->O00000oo:Lji;

    aput-object v1, v0, v6

    sget-object v1, Lji;->O0000O0o:Lji;

    aput-object v1, v0, v7

    sget-object v1, Lji;->O0000OOo:Lji;

    aput-object v1, v0, v8

    sget-object v1, Lji;->O0000Oo0:Lji;

    aput-object v1, v0, v9

    sget-object v1, Lji;->O0000Oo:Lji;

    aput-object v1, v0, v10

    sput-object v0, Lji;->O0000OoO:[Lji;

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

.method public static valueOf(Ljava/lang/String;)Lji;
    .locals 1

    const-class v0, Lji;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lji;

    return-object p0
.end method

.method public static values()[Lji;
    .locals 1

    sget-object v0, Lji;->O0000OoO:[Lji;

    invoke-virtual {v0}, [Lji;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lji;

    return-object v0
.end method
