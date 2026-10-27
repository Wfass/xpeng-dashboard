.class public Lbvh;
.super Ljava/lang/Object;
.source "CarSpeechConfigFacade.java"


# static fields
.field private static a:Lbvg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lbvi;

    invoke-direct {v0}, Lbvi;-><init>()V

    invoke-static {v0}, Lbvh;->a(Lbvg;)V

    return-void
.end method

.method public static a(Lbvg;)V
    .locals 0

    .line 22
    sput-object p0, Lbvh;->a:Lbvg;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 31
    sget-object v0, Lbvh;->a:Lbvg;

    invoke-interface {v0}, Lbvg;->a()Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 1

    .line 40
    sget-object v0, Lbvh;->a:Lbvg;

    invoke-interface {v0}, Lbvg;->b()Z

    move-result v0

    return v0
.end method
