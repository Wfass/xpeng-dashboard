.class public final enum LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

.field public static final enum OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

.field public static final synthetic OooO0OO:[LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    const-string v1, "MUSIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;-><init>(Ljava/lang/String;II)V

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    .line 2
    new-instance v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    const-string v4, "MIC"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;-><init>(Ljava/lang/String;II)V

    sput-object v1, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    .line 3
    new-array v4, v5, [LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 4
    sput-object v4, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;->OooO0OO:[LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;
    .locals 1

    const-class v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    return-object p0
.end method

.method public static values()[LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;
    .locals 1

    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;->OooO0OO:[LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOooO00o/OooO0O0/OooO0o0/OooO0o/OooO00o$OooO0O0;

    return-object v0
.end method
