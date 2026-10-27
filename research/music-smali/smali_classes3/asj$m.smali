.class public Lasj$m;
.super Ljava/lang/Object;
.source "UserEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 344
    invoke-direct {p0, v0}, Lasj$m;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Lasj$m;->a:Ljava/lang/String;

    return-void
.end method
