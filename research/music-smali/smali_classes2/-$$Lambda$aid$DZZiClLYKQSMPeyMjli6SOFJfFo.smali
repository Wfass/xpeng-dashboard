.class public final synthetic L-$$Lambda$aid$DZZiClLYKQSMPeyMjli6SOFJfFo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Laid$a;


# instance fields
.field private final synthetic f$0:Landroid/app/Application;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$aid$DZZiClLYKQSMPeyMjli6SOFJfFo;->f$0:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final getControllerForBrowser(Landroid/support/v4/media/MediaBrowserCompat;)Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1

    iget-object v0, p0, L-$$Lambda$aid$DZZiClLYKQSMPeyMjli6SOFJfFo;->f$0:Landroid/app/Application;

    invoke-static {v0, p1}, Laid;->lambda$DZZiClLYKQSMPeyMjli6SOFJfFo(Landroid/app/Application;Landroid/support/v4/media/MediaBrowserCompat;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object p1

    return-object p1
.end method
