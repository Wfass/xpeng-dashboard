.class public final enum LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

.field public static final enum OooO0O0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

.field public static final synthetic OooO0OO:[LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;


# instance fields
.field public final OooO0Oo:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    const-string v1, "SO"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;-><init>(Ljava/lang/String;II)V

    sput-object v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    .line 2
    new-instance v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    const-string v1, "KO"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;-><init>(Ljava/lang/String;II)V

    sput-object v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;->OooO0O0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    invoke-static {}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;->OooO00o()[LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;->OooO0OO:[LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

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

    iput p3, p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;->OooO0Oo:I

    return-void
.end method

.method public static final synthetic OooO00o()[LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    sget-object v1, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;->OooO0O0:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;
    .locals 1

    const-class v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    return-object p0
.end method

.method public static values()[LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;
    .locals 1

    sget-object v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;->OooO0OO:[LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO00o;

    return-object v0
.end method
