.class public final synthetic Landroid/media/-$$Lambda$AudioManager$CapturePresetDevicesRoleDispatcherStub$J65YK8CVWJEAWGanILAy7I75UJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioManager$DevRoleListenerInfo;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioManager$DevRoleListenerInfo;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/-$$Lambda$AudioManager$CapturePresetDevicesRoleDispatcherStub$J65YK8CVWJEAWGanILAy7I75UJI;->f$0:Landroid/media/AudioManager$DevRoleListenerInfo;

    iput p2, p0, Landroid/media/-$$Lambda$AudioManager$CapturePresetDevicesRoleDispatcherStub$J65YK8CVWJEAWGanILAy7I75UJI;->f$1:I

    iput-object p3, p0, Landroid/media/-$$Lambda$AudioManager$CapturePresetDevicesRoleDispatcherStub$J65YK8CVWJEAWGanILAy7I75UJI;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/media/-$$Lambda$AudioManager$CapturePresetDevicesRoleDispatcherStub$J65YK8CVWJEAWGanILAy7I75UJI;->f$0:Landroid/media/AudioManager$DevRoleListenerInfo;

    iget v1, p0, Landroid/media/-$$Lambda$AudioManager$CapturePresetDevicesRoleDispatcherStub$J65YK8CVWJEAWGanILAy7I75UJI;->f$1:I

    iget-object v2, p0, Landroid/media/-$$Lambda$AudioManager$CapturePresetDevicesRoleDispatcherStub$J65YK8CVWJEAWGanILAy7I75UJI;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Landroid/media/AudioManager$CapturePresetDevicesRoleDispatcherStub;->lambda$dispatchDevicesRoleChanged$0(Landroid/media/AudioManager$DevRoleListenerInfo;ILjava/util/List;)V

    return-void
.end method
