.class Lcdj$e;
.super Lcdi;
.source "Coders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcdi;-><init>([Ljava/lang/Class;)V

    return-void
.end method
