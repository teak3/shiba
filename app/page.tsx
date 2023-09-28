import Image from 'next/image'

export default function Home() {
  return (
    <main className="flex min-h-screen flex-col items-center justify-center">
      <aside className="bg-black text-white p-6 border rounded-lg w-full max-w-lg font-mono">
        <div className="flex justify-between items-center">
          <div className="flex space-x-2 text-red-500">
            <div className="w-3 h-3 rounded-full bg-red-500" />
            <div className="w-3 h-3 rounded-full bg-yellow-500" />
            <div className="w-3 h-3 rounded-full bg-green-500" />
          </div>
          <p className="text-sm">shiba</p>
        </div>
        <div className="mt-4">
          <p className="text-green-400">$ mpstart</p>
          <p className="text-white">Welcome to Ubuntu 22.04.3 LTS (GNU/Linux 5.15.0-84-generic aarch64)</p>
          <p className="text-green-400">$</p>
        </div>
      </aside>
    </main>
  )
}
